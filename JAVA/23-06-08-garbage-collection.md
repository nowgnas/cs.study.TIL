# GC(garbage collection

C언어는 `free()`를 사용해 개발자 직접 메모리를 해제해야 한다

JVM은 가비지 컬렉터가 불필요한 메모리를 정리해준다. 생성된 객체는 일회성이고 메모리에서 금방 사라진다. JVM의 Heap영역에 Young, Old Generation으로 구성되어 있다.

### Young Generation

- 새로운 객체가 할당되는 영역
- 대부분의 객체는 Unreachable 상태가 된다
- Young Generation에 대한 가비지 컬렉션은 Minor GC라고 한다

### Old Generation

- Young Generation에서 Reachable 상태를 유지하는 객체가 복사되는 영역
- Young Generation보다 크게 할당되고, 가비지 객체는 적게 발생한다
- Old Generation에 대한 가비지 컬렉션은 Mahor GC라고 한다
