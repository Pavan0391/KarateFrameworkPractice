package com.example;
import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;


public class Testrunner {
    @Test
    Karate getTest(){
        return Karate.run("getAPI","postAPI","putAPI","randomEmail","deleteAPI","postoutline").relativeTo(getClass());
    }

}


