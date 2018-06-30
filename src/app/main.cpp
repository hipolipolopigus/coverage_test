#include <QCoreApplication>
#include <QDebug>

int main(int argc, char **argv) {
  QCoreApplication qt(argc, argv);
  qDebug() << "Hello, World!";
  return 0;
}