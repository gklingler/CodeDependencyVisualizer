namespace NSXX {
  namespace NSX {
    class C {
    };
    class D {
    };
  }
}


using namespace NSXX::NSX;


class A {
};

template<typename T>
class B : public A, C /* asdf */ {
  private:
    const NSXX::NSX::C *m;
    char c;
    D d1;
    T varT;

    NSXX::NSX::C aprivateMethod(int a /*acomment*/, int b);
    float aprivateMethod();
  public:
    C x;

    void aPublicMethod() {}

    template<typename T>
    void aTemplateMethod(T x) {}
};
