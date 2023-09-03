package com.example.cicdtest;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;

class TempTest {

    @Test
    void test() {
        TestTarget.test1();
        TestTarget.test2();
    }

    @Test
    void testFail() {
//        assertThat(false).isTrue();
    }

}
