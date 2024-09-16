#include "resolve.h"
#include <unordered_map>
#include <iostream>

#define FOUND_ALL_DEF 0
#define MULTI_DEF 1
#define NO_DEF 2

std::string errSymName;

int callResolveSymbols(std::vector<ObjectFile> &allObjects);
inline int symNoDef(RelocEntry& re);
inline int symMultiDef(Symbol& re);
bool checkStrongSym(Symbol& sym);
bool checkWeakSym(Symbol& sym);
bool checkWeakDef(Symbol& sym);

void resolveSymbols(std::vector<ObjectFile> &allObjects) {
    int ret = callResolveSymbols(allObjects);
    if (ret == MULTI_DEF) {
        std::cerr << "multiple definition for symbol " << errSymName << std::endl;
        abort();
    } else if (ret == NO_DEF) {
        std::cerr << "undefined reference for symbol " << errSymName << std::endl;
        abort();
    }
}

/* bind each undefined reference (reloc entry) to the exact valid symbol table entry
 * Throw correct errors when a reference is not bound to definition,
 * or there is more than one definition.
 */
int callResolveSymbols(std::vector<ObjectFile> &allObjects)
{
    /* Your code here */
    // if found multiple definition, set the errSymName to problematic symbol name and return MULTIDEF;
    // if no definition is found, set the errSymName to problematic symbol name and return NODEF;


    // Check if there has multiple definition
    // If everything is current, it also made a strong symbol list
    std::unordered_map<std::string, Symbol*> strongSymList;
    std::unordered_map<std::string, Symbol*> weakDefList;
    for(auto& obj: allObjects) for(auto& sym: obj.symbolTable)
        if(checkStrongSym(sym)){
            if(strongSymList.find(sym.name)!= strongSymList.end())
                return symMultiDef(sym);
            else{
                strongSymList[sym.name] = &sym;  
                std::cout << "[DEBUG - resolve.cc]: Strong Symbol List add: " << sym.name << " addr:" << &sym << std::endl;
            }   
        }
        else if(checkWeakDef(sym)){
            if(weakDefList.find(sym.name) != weakDefList.end()){}
            else{
                weakDefList[sym.name] = &sym;  
                std::cout << "[DEBUG - resolve.cc]: Weak`Def` Symbol List add: " << sym.name << " addr:" << &sym << std::endl;
                }
        }

    // Binding Symbol
    for(auto& obj: allObjects) for(auto& re:obj.relocTable){
        if(checkWeakSym(*re.sym) && re.name == re.sym->name){
            if(strongSymList.find(re.name)!= strongSymList.end()){
                re.sym = strongSymList[re.name];
                std::cout << "[DEBUG - resolve.cc]: Symbol [ " << re.name << " ] binding with " 
                          << strongSymList[re.name] << std::endl;

                if(weakDefList.find(re.name)!= weakDefList.end())
                    weakDefList.erase(weakDefList.find(re.name));
            }
        }
    }

    // Check if there has no definition is found
    for(auto& obj: allObjects) for(auto& re:obj.relocTable){
        if(strongSymList.find(re.name) != strongSymList.end())
            continue;
        else if(weakDefList.find(re.name) != weakDefList.end()){
        // [Rouge]: I dont let the weak symbol point to a specific sym, but it work
        // BUT If i let it, segmentFault happen???
        // And this elseif actrully flite the COMMON case??? - test2?

            //re.sym = weakDefList["re.name"];
            std::cout << "[DEBUG - resolve.cc]: Symbol [ " << re.name << " ] binding(Weak) with " 
                      << weakDefList[re.name] << std::endl;
        }
        else
            return symNoDef(re);
    }

    return FOUND_ALL_DEF;
}

inline int symNoDef(RelocEntry& re){
    errSymName = re.name;
    return NO_DEF;
}

inline int symMultiDef(Symbol& sym){
    errSymName = sym.name;
    return MULTI_DEF;
}

bool checkStrongSym(Symbol& sym){
    if(sym.bind == STB_GLOBAL && sym.index != SHN_UNDEF 
                              && sym.index != SHN_COMMON)
        return true;
    else 
        return false;
}

bool checkWeakSym(Symbol& sym){
    // [Rouge]: In Linker-Lab's manual's "test4" part, has the defination of
    //          weak symbol - "3.不存在初值。即Symbol的index为SHN_COMMON".
    //          But the function `foo` will be not consider as weak sym if we don't 
    //          consider about `SHN_UNDEF`.
    if(sym.bind == STB_GLOBAL && (sym.index == SHN_COMMON || sym.index == SHN_UNDEF))
        return true;
    else 
        return false;
}

bool checkWeakDef(Symbol& sym){
    if(sym.bind == STB_GLOBAL && sym.index == SHN_COMMON )
        return true;
    else 
        return false;
}