#include <gtest/gtest.h>

bool valid_age(int age) {
  if (age >= 21) {
    return true;
  }
  return false;
}

TEST(ValidAgeTest, PositiveNos) { 
    ASSERT_EQ(true, valid_age(25));
    ASSERT_EQ(false, valid_age(20));
    ASSERT_EQ(true, valid_age(21));
}
 
int main(int argc, char **argv) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}