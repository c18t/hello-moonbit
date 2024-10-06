fn main {
  let a = @my_awesome_fibonacci.fib(10)
  let b = @my_awesome_fibonacci.fib2(11)
  println("fib(10) = \{a}, fib(11) = \{b}")
  println(@lib.hello())
}

pub fn hello() -> MyCtx {
  MyCtx::{
    result: @lib.hello(),
    cur: 0
  }
}

struct MyCtx {
  result: String
  mut cur: Int
}

fn MyCtx::next(self: MyCtx) -> Int {
  if (self.cur >= self.result.length()) {
    return -1
  }
  let r = self.result[self.cur].to_int()
  self.cur += 1
  r
}

pub fn reset(buf: MyCtx) -> Unit {
  buf.cur = 0
}

pub fn next_char(buf: MyCtx) -> Int {
  buf.next()
}

pub fn get_offset(buf: MyCtx) -> Int {
  let x = buf.result.to_js_string()
  x.log()
  1
}

pub fn fib(n : Int) -> Int {
  @my_awesome_fibonacci.fib(n)
}
