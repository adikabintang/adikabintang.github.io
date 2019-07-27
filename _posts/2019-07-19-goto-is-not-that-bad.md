---
title: "'goto' Is Not That Bad"
date: 2019-07-19T11:19:50-04:00
categories:
  - Programming
tags:
  - Programming
  - C
---

Edsger Dijkstra said that "goto is considered harmful" [[1](https://en.wikipedia.org/wiki/Considered_harmful)].

However, there are some cases, at least in C programming, where `goto` is the clean way to do thing. In fact, there are a lot of `goto` in the Linux kernel source code [[2](https://github.com/torvalds/linux/search?q=goto&unscoped_q=goto)] and Linus made some sound justification on this [[3](https://koblents.com/Ches/Links/Month-Mar-2013/20-Using-Goto-in-Linux-Kernel-Code/)].

Suhu Erik [[4](https://edom.github.io/)] confirmed this `goto` usage and said that `goto` is a poor man's exception handling: we can handle error without stack unwinding.

Consider this example:

```c
void foo()
{
    int *x = malloc(sizeof(int));
    bool ok;

    // do one thing
    ok = do_one_thing();
    if (!ok)
        goto err_handling_point;
    
    // do one other thing
    ok = do_re_mi();
    if (!ok)
        goto err_handling_point;

err_handling_point:
    free(x);
}
```

Adding `free` for all `if` is lame. Forgetting calling `free` when returning from function is even more lame. This is one of the cleanest approach. I don't know other approach in C. No, don't talk RAII. We are not talking about C++11.