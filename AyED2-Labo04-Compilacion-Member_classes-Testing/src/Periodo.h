#ifndef CLASS_PERIODO
#define CLASS_PERIODO
class Periodo {
 public:
  Periodo(int anios, int meses, int dias);

  int anios() const;
  int meses() const;
  int dias() const;

 private:
  int anios_;
  int meses_;
  int dias_;
};
#endif