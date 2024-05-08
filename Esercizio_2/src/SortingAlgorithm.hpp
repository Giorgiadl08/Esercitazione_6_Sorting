#ifndef __SORTING_ALGORITHM_H
#define __SORTING_ALGORITHM_H

#include <iostream>
#include <vector>
#include <chrono>
#include <numeric> //utile per usare iota

#include <thread>

using namespace std;

namespace SortLibrary {

template<typename T>
void Merge(vector<T>& v,
           const unsigned int& sx,
           const unsigned int& cx,
           const unsigned int& dx){

    unsigned int i = sx;
    unsigned int j = cx + 1;

    vector<T> b;
    b.reserve(dx - sx + 1);

    while( i <= cx && j <= dx)
    {
        if (v[i] <= v[j])
            b.push_back(v[i++]);
        else
            b.push_back(v[j++]);
    }

    if (i <= cx)
        b.insert(b.end(), v.begin() + i, v.begin() + cx + 1);
    if ( j <= dx)
        b.insert(b.end(), v.begin() + j, v.begin() + dx + 1);

    copy(b.begin(), b.end(), v.begin() + sx);

}

template<typename T>
void MergeSort(vector<T>& v,
               const unsigned int& sx,
               const unsigned int& dx){

    if (sx < dx)
    {
        unsigned int cx = (sx + dx) / 2;
        MergeSort(v, sx, cx);
        MergeSort(v, cx + 1, dx);

        Merge(v, sx, cx, dx);
    }

}

template<typename T>
void callMergeSort(vector<T>& v){
    MergeSort(v, 0, v.size()-1);
}


template<typename T>
void BubbleSort(std::vector<T>& data)
{
    size_t rem_size = data.size();
    size_t last_seen = rem_size;
    bool swapped = true;

    while (swapped) {
        swapped = false;
        for (size_t i = 1; i < rem_size; i++) {
            if (data[i-1] > data[i]) {
                std::swap(data[i-1], data[i]);
                swapped = true;
                last_seen = i;
            }
        }
//        rem_size = rem_size - 1;
        rem_size = last_seen;
    }
}

}


template<typename T>
vector<T> generateSortedVector(size_t size)
{
    vector<T> vec(size);
    //creo un vettore ordinato utilizzando iota
    std::iota(vec.begin(), vec.end(), 0);
    //la lunghezza di vec sarà pari a size, e conterrà valori interi da 0 a size - 1.

    return vec;
}

template<typename T>
vector<T> generatePerturbedVector(const vector<T>& sortedVec)
{
    vector<T> perturbedVec = sortedVec;

    //perturbo il vettore introducendo inversioni casuali
    for (size_t i = 0; i < perturbedVec.size(); ++i) {
            perturbedVec[i] = rand();
    }
    return perturbedVec;
}

template<typename T>
double measureTime(vector<T>& vec, void(*sortFunc)(vector<T>&))
{
    //tempo all'inizio dell'esecuzione della funzione di ordinamento
    auto t_begin = std::chrono::steady_clock::now();

    //eseguo la funzione di ordinamento
    sortFunc(vec);

    //tempo alla fine dell'esecuzione della funzione di ordinamento
    auto t_end = std::chrono::steady_clock::now();

    //calcolo la durata dell'esecuzione in nanosecondi
    double duration = std::chrono::duration_cast<std::chrono::nanoseconds>(t_end - t_begin).count();

    return duration;
}

#endif // __SORTING_ALGORITHM_H
