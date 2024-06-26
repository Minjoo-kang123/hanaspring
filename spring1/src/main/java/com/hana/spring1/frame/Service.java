package com.hana.spring1.frame;

import com.hana.spring1.exception.DuplicatedIdException;

import java.util.List;

public interface Service<K, V> {
    int add(V v) throws DuplicatedIdException;
    int del(K k) throws Exception;
    int modify(V v) throws Exception;
    V get(K k) throws Exception;
    List<V> get() throws Exception;
}
