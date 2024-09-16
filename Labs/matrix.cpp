#include <iostream>
#include <cmath>

using namespace std;

const int kMaxUsers = 1000;
const int kMaxFeatures = 20;
int matrix[kMaxUsers][kMaxFeatures], selectionA[kMaxFeatures], selectionB[kMaxFeatures];
bool isConflict[kMaxFeatures][kMaxFeatures];
int maxScore = 0, bestSelectionA[kMaxFeatures], bestSelectionB[kMaxFeatures];

// Function to explore all combinations of features
void DepthFirstSearch(int currentFeature, int countA, int countB) {
    if (kMaxFeatures - currentFeature + countA + countB < maxScore) {
        return; // Pruning the branch if it can't surpass the current max score
    }

    if (currentFeature == kMaxFeatures && countA + countB >= maxScore && countA > 0 && countB > 0) {
        bool isValid = true;
        for (int i = 0; i < kMaxUsers && isValid; i++) {
            bool hasFeatureA = false, hasFeatureB = false;
            for (int j = 0; j < kMaxFeatures; j++) {
                if (selectionA[j] == 1 && matrix[i][j] == 1) hasFeatureA = true;
                if (selectionB[j] == 1 && matrix[i][j] == 1) hasFeatureB = true;
            }
            if (hasFeatureA && hasFeatureB) isValid = false; // Conflict detected
        }

        if (isValid) {
            int sumA = 0, sumB = 0;
            for (int i = 0; i < kMaxFeatures; i++) {
                sumA += bestSelectionA[i];
                sumB += bestSelectionB[i];
            }
            if (abs(countA - countB) < abs(sumA - sumB)) {
                for (int i = 0; i < kMaxFeatures; i++) {
                    bestSelectionA[i] = selectionA[i];
                    bestSelectionB[i] = selectionB[i];
                }
            }
        }

        if (isValid && countA + countB > maxScore) {
            maxScore = countA + countB;
            for (int i = 0; i < kMaxFeatures; i++) {
                bestSelectionA[i] = selectionA[i];
                bestSelectionB[i] = selectionB[i];
            }
        }
    }

    if (currentFeature == kMaxFeatures) return;

    // Try including current feature in set A
    bool canIncludeInA = true, canIncludeInB = true;
    if (countB > 0) {
        for (int i = 0; i < kMaxFeatures; i++) {
            if (selectionB[i] && isConflict[currentFeature][i]) {
                canIncludeInA = false;
                break;
            }
        }
    }
    if (canIncludeInA) {
        selectionA[currentFeature] = 1;
        DepthFirstSearch(currentFeature + 1, countA + 1, countB);
        selectionA[currentFeature] = 0;
    }

    // Try including current feature in set B
    if (countA > 0) {
        for (int i = 0; i < kMaxFeatures; i++) {
            if (selectionA[i] && isConflict[currentFeature][i]) {
                canIncludeInB = false;
                break;
            }
        }
    }
    if (canIncludeInB) {
        selectionB[currentFeature] = 1;
        DepthFirstSearch(currentFeature + 1, countA, countB + 1);
        selectionB[currentFeature] = 0;
    }

    // Explore option with excluding current feature from both sets
    DepthFirstSearch(currentFeature + 1, countA, countB);
}

int main() {
    // Input data into the matrix
    for (int i = 0; i < kMaxUsers; i++) {
        for (int j = 0; j < kMaxFeatures; j++) {
            cin >> matrix[i][j];
        }
    }

    // Precompute conflicting features
    for (int i = 0; i < kMaxFeatures; i++) {
        for (int j = i + 1; j < kMaxFeatures; j++) {
            for (int k = 0; k < kMaxUsers; k++) {
                if (matrix[k][i] == 1 && matrix[k][j] == 1) {
                    isConflict[i][j] = true;
                    isConflict[j][i] = true;
                    break;
                }
            }
        }
    }

    // Start the Depth First Search from the first feature
    DepthFirstSearch(0, 0, 0);

    int lengthA = 0, lengthB = 0;
    for(int i = 0; i < kMaxFeatures; i++) {
        if(bestSelectionA[i] == 1) lengthA++;
        if(bestSelectionB[i] == 1) lengthB++;
    }
    if(lengthA > lengthB){
        for(int i = 0; i < kMaxFeatures; i++){
            if(bestSelectionA[i] == 1) cout << i << " ";
        }
        cout << endl;
        for(int i = 0; i < kMaxFeatures; i++){
            if(bestSelectionB[i] == 1) cout << i << " ";
        }
    } else {
        for(int i = 0; i < kMaxFeatures; i++){
            if(bestSelectionB[i] == 1) cout << i << " ";
        }
        cout << endl;
        for(int i = 0; i < kMaxFeatures; i++){
            if(bestSelectionA[i] == 1) cout << i << " ";
        }
    }

    cout << endl;
    return 0;
}
