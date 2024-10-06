pub fn fib2(num : Int) -> Int {
  fn aux(n, acc1, acc2) {
    match n {
      0 => acc1
      1 => acc2
      _ => aux(n - 1, acc2, acc1 + acc2)
    }
  }

  aux(num, 0, 1)
}

test {
  assert_eq!(fib(1), 1)
  assert_eq!(fib(2), 1)
  assert_eq!(fib(3), 2)
  assert_eq!(fib(4), 3)
  assert_eq!(fib(5), 5)
}