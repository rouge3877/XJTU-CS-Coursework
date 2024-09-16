#include "relocation.h"
#include <iostream>
#include <sys/mman.h>

void test_0_1_(ObjectFile &objFile, uint64_t textOff, uint64_t textAddr, uint64_t baseAddr)
{
    for (auto &re : objFile.relocTable) {
        std::cout << "[DEBUG - relocation.cc]: Symbol's name is " << re.name << std::endl;

        uint64_t addr = re.offset + textOff + baseAddr;
        uint32_t valueToFill;

        std::cout << "[DEBUG - relocation.cc]: Modify Address is " << std::hex << addr-baseAddr << std::endl;

        // [Rouge]: Btw, does "R_X86_64_PC32" means that the address before %rip is 32-bits?

        switch(re.type){
            case R_X86_64_PLT32:
            case R_X86_64_PC32:

                valueToFill = (uint32_t)re.sym->value 
                            - ((uint32_t)re.offset + (uint32_t)textAddr) 
                            + (uint32_t)re.addend;
                break;
            case R_X86_64_32:
                valueToFill = (uint32_t)re.sym->value 
                            + (uint32_t)re.addend;
                break;
        }

        std::cout << "[DEBUG - relocation.cc]: Value to Fill is " << std::hex << valueToFill
                                << ", and it's size is " << sizeof(valueToFill) << std::endl;

        *(reinterpret_cast<uint32_t *>(addr)) = valueToFill;
    }
}

void handleRela(std::vector<ObjectFile> &allObject, ObjectFile &mergedObject, bool isPIE)
{
    /* When there is more than 1 objects, 
     * you need to adjust the offset of each RelocEntry
     */
    /* Your code here */

    uint64_t judgeOffset = 0;
    for(auto& obj: allObject) {
        for(auto& re:obj.relocTable){

            std::cout << "[DEBUG - relocation.cc]: "
                      << "Adjust Symbol [ " << re.name << " ]'s offset from 0x"
                      << std::hex << re.offset << " into 0x"
                      << std::hex << re.offset + judgeOffset
                      << std::endl;

            re.offset += judgeOffset;
        }
        judgeOffset += (obj.sections[".text"].size);
        judgeOffset = judgeOffset + judgeOffset%obj.sections[".text"].align;

        std::cout << "[DEBUG - relocation.cc]: "
                  << " ---------------(Offset bias is 0x" << std::hex << judgeOffset 
                  << " and align is " << std::hex << obj.sections[".text"].align
                  << ")" << std::endl;
    }

    /* in PIE executables, user code starts at 0xe9 by .text section */
    /* in non-PIE executables, user code starts at 0xe6 by .text section */
    uint64_t userCodeStart = isPIE ? 0xe9 : 0xe6;
    uint64_t textOff = mergedObject.sections[".text"].off + userCodeStart;
    uint64_t textAddr = mergedObject.sections[".text"].addr + userCodeStart;
    
    uint64_t baseAddr = (uint64_t)mergedObject.baseAddr;
    
    /* Your code here */
    for(auto& obj: allObject) {
        test_0_1_(obj, textOff, textAddr, baseAddr);

        std::cout << "[DEBUG - relocation.cc]: "
                  << " ---------------(Current Object bias is 0x" << std::hex << obj.baseAddr << ")" << std::endl;
    }

}


