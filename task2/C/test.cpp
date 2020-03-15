#include <gtest/gtest.h>
#include"B/lib.h"
#include"main.h"
#include"test.h"

TEST(libTest, PositiveNumber) {
  EXPECT_EQ(9, square(3));
}

TEST(indexTest, Five) {
  EXPECT_EQ(5, five());
}
