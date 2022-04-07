#include <gtest/gtest.h>

bool valid_age(int age) {
  if (age >= 18) {
    return true;
  }
  return false;
}

TEST(ValidAgeTest, PositiveNos) { 
    ASSERT_EQ(true, valid_age(30));
    //ASSERT_EQ(false, valid_age(15));
    //ASSERT_EQ(true, valid_age(18));
}
 
int main(int argc, char **argv) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
