#include <gtest/gtest.h>
#include "../include/validage.h"

bool moreTests = true;

TEST(ValidAgeTest, PositiveNos) {
    ASSERT_EQ(true, valid_age(30));
    
    if(moreTests==true){
    	ASSERT_EQ(false, valid_age(15));
    	ASSERT_EQ(true, valid_age(18));
    }
}

int main(int argc, char **argv) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
