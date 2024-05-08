#include "SortingAlgorithm.hpp"
#include <iostream>
#include <vector>

using namespace std;

//implemento delle funzioni per generare vettori ordinati e casuali di diverse dimensioni
//implemento una funzione per misurare il tempo di esecuzione di ciascun algoritmo di ordinamento per un dato vettore
//eseguo esperimenti in cui si ordinano vettori di diverse dimensioni e caratteristiche utilizzando sia BubbleSort che MergeSort e registro il tempo impiegato da ciascun algoritmo
//confronto i tempi di esecuzione per scenari diversi per valutare le prestazioni relative dei due algoritmi


int main(int argc, char* argv[])
{
    //parsing degli argomenti della riga di comando per ottenere le dimensioni del vettore
    vector<size_t> sizes;
    for (int i = 1; i < argc; ++i) {
        sizes.push_back(atoi(argv[i]));
    }

    //numero di volte da ripetere ciascun test
    size_t numIterations = 10;

    for (size_t size : sizes)
    {
        vector<int> sortedVec, perturbedVec;

        sortedVec = generateSortedVector<int>(size);
        perturbedVec = generatePerturbedVector(sortedVec);

        //variabili che tengono traccia dei tempi totali
        double totalBubbleSortTime = 0.0;
        double totalMergeSortTime = 0.0;
        double totalBubbleSortTimePerturbed = 0.0;
        double totalMergeSortTimePerturbed = 0.0;

        cout << "Test con il vett di lunghezza:  " << size << endl;


        //ripeto ciascun test più volte
        for (size_t i = 0; i < numIterations; ++i) {
            //creo una copia di sortedVec
            vector<int> sortedVecCopy = sortedVec;

            //test con vettore già ordinato

            cout << "Per il vettore già ordinato: " << endl;

            //misuro il tempo di esecuzione di BubbleSort
            double bubbleSortTime = measureTime(sortedVecCopy, SortLibrary::BubbleSort<int>);
            cout << "Tempo di esecuzione di BubbleSort: " << bubbleSortTime << " nanosecondi" << endl;
            totalBubbleSortTime += bubbleSortTime;

            //misuro il tempo di esecuzione di MergeSort
            double mergeSortTime = measureTime(sortedVecCopy, SortLibrary::callMergeSort<int>);
            cout << "Tempo di esecuzione di MergeSort: " << mergeSortTime << " nanosecondi" << endl;
            totalMergeSortTime += mergeSortTime;
            std::cout << std::endl;
        }


        //ripeto ciascun test più volte
        for (size_t i = 0; i < numIterations; ++i) {
            //creo una copia di perturbedVec
            vector<int> perturbedVecCopy = perturbedVec;

            //test con vettore perturbato

            cout << "Per il vettore perturbato: " << endl;

            //misuro il tempo di esecuzione di BubbleSort
            double bubbleSortTimePerturbed = measureTime(perturbedVecCopy, SortLibrary::BubbleSort<int>);
            cout << "Tempo di esecuzione di BubbleSort: " << bubbleSortTimePerturbed << " nanosecondi" << endl;
            totalBubbleSortTimePerturbed += bubbleSortTimePerturbed;

            //misuro il tempo di esecuzione di MergeSort
            //fai una copia di perturbed vec
            double mergeSortTimePerturbed = measureTime(perturbedVecCopy, SortLibrary::callMergeSort<int>);
            cout << "Tempo di esecuzione di MergeSort: " << mergeSortTimePerturbed << " nanosecondi" << endl;
            totalMergeSortTimePerturbed += mergeSortTimePerturbed;
            cout << endl;
        }


        //calcoloa la media dei tempi
        double averageBubbleSortTime = totalBubbleSortTime / numIterations;
        double averageMergeSortTime = totalMergeSortTime / numIterations;
        double averageBubbleSortTimePerturbed = totalBubbleSortTimePerturbed / numIterations;
        double averageMergeSortTimePerturbed = totalMergeSortTimePerturbed / numIterations;

        //stampo le medie dei tempi
        cout << "Media dei tempi per BubbleSort (vettore ordinato): " << averageBubbleSortTime << " nanosecondi" << endl;
        cout << "Media dei tempi per MergeSort (vettore ordinato): " << averageMergeSortTime << " nanosecondi" << endl;
        cout << "Media dei tempi per BubbleSort (vettore perturbato): " << averageBubbleSortTimePerturbed << " nanosecondi" << endl;
        cout << "Media dei tempi per MergeSort (vettore perturbato): " << averageMergeSortTimePerturbed << " nanosecondi" << endl;
        cout << endl;
    }

    return 0;
}


//noto che per il vettore perturbato, BubbleSort risulta più lento di MergeSort in quanto il costo temporale di Bubble è O(n^2) e di Merge è O(nlogn)
//invece per il vettore ordinato, BubbleSort risulta più veloce di Mergesort in quanto il costo temporale di Bubble scala come O(n) al posto di O(n^2)
