package com.example.ex0406;

import java.util.ArrayList;
import java.util.List;

public class MemberDB {

    public List<String> doselect(){
        System.out.println("doselect");
        List<String> list = new ArrayList<>();
        list.add("aaa");
        list.add("bbb");
        list.add("ccc");
        return list;
    }

}
