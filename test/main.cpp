#include <QCoreApplication>
#include <gtest/gtest.h>

using ::testing::InitGoogleTest;

int main(int argc, char *argv[]) {
  QCoreApplication qt(argc, argv);
  InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}