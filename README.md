# Lab 6 - Prolog Programming Solutions

This directory contains solutions to **Lab 6: Review of Previous Lecture Notes**, a series of 15 Prolog programming exercises covering recursion, list manipulation, expression evaluation, and family tree relations.

Each task is implemented as a standalone `.pl` file so it can be loaded and tested independently.

---

## Table of Contents

1. [Factorial Calculation (Recursion)](#1-factorial-calculation-recursion)
2. [Sum of Even Numbers in a List](#2-sum-of-even-numbers-in-a-list)
3. [Palindrome Checker](#3-palindrome-checker)
4. [Maximum Element in a List](#4-maximum-element-in-a-list)
5. [List Length Without Built-in Predicates](#5-list-length-without-built-in-predicates)
6. [Reverse a List](#6-reverse-a-list)
7. [Ancestor and Descendant Relations](#7-ancestor-and-descendant-relations)
8. [Simple Arithmetic Expression Evaluator](#8-simple-arithmetic-expression-evaluator)
9. [Count Occurrences of an Element](#9-count-occurrences-of-an-element)
10. [Find All Siblings](#10-find-all-siblings)
11. [N-th Element of a List](#11-n-th-element-of-a-list)
12. [Check if List is Sorted](#12-check-if-list-is-sorted)
13. [Check Prime Number](#13-check-prime-number)
14. [Fibonacci Series Generator](#14-fibonacci-series-generator-non-memoized)
15. [Family Tree - Uncle/Aunt Relation](#15-family-tree--uncleaunt-relation)

---

## Requirements

- **SWI-Prolog** (or any Prolog interpreter compatible with the ISO standard)

You can check your installation by running:

```bash
swipl --version
```

---

## How to Run

Open SWI-Prolog in this directory and load any task file:

```bash
swipl
?- [task1_factorial].        % loads the file
?- factorial(5, X).           % runs the query
```

Alternatively, you can run Prolog directly from the command line:

```bash
swipl -q -f task1_factorial.pl -g "factorial(5, X), format('Factorial(5) = ~w~n', [X]), halt."
```

---

## 1. Factorial Calculation (Recursion)

**File:** `task1_factorial.pl`

Computes the factorial of a non-negative integer using recursive rules.

**Predicate:** `factorial(N, F)` — `F` is the factorial of `N`.

```prolog
?- factorial(5, X).
X = 120.

?- factorial(0, X).
X = 1.
```

---

## 2. Sum of Even Numbers in a List

**File:** `task2_sum_even.pl`

Adds up all even numbers in a given list.

**Predicate:** `sum_even(List, Sum)` — `Sum` is the total of all even elements in `List`.

```prolog
?- sum_even([1, 2, 3, 4, 5, 6], X).
X = 12.

?- sum_even([2, 4, 6, 8], X).
X = 20.
```

---

## 3. Palindrome Checker

**File:** `task3_palindrome.pl`

Succeeds when the input list reads the same forwards and backwards.

**Predicate:** `palindrome(List)`

Two small utility predicates (`last_element/2`, `remove_last/2`) are used as helpers.

```prolog
?- palindrome([a, b, c, b, a]).
true.

?- palindrome([a, b, c, d]).
false.
```

---

## 4. Maximum Element in a List

**File:** `task4_max_list.pl`

Finds the largest number in a list recursively.

**Predicate:** `max_list(List, Max)`

```prolog
?- max_list([3, 1, 4, 1, 5, 9, 2, 6], X).
X = 9.

?- max_list([10], X).
X = 10.
```

---

## 5. List Length Without Built-in Predicates

**File:** `task5_list_length.pl`

Computes the length of a list using only custom recursive rules.

**Predicate:** `list_length(List, N)`

```prolog
?- list_length([a, b, c, d, e], X).
X = 5.

?- list_length([], X).
X = 0.
```

---

## 6. Reverse a List

**File:** `task6_reverse_list.pl`

Returns the reversed version of the input list.

**Predicate:** `reverse_list(Input, Output)`

```prolog
?- reverse_list([1, 2, 3, 4], X).
X = [4, 3, 2, 1].

?- reverse_list([], X).
X = [].
```

---

## 7. Ancestor and Descendant Relations

**File:** `task7_ancestor.pl`

Defines transitive `ancestor/2` and `descendant/2` over a sample family tree defined with `parent/2` facts.

**Sample facts:**

```
parent(john, mary).
parent(mary, ann).
...
```

**Predicate:** `ancestor(X, Y)` — `X` is an ancestor of `Y`.
**Predicate:** `descendant(X, Y)` — `X` is a descendant of `Y`.

```prolog
?- ancestor(john, ann).
true.

?- descendant(ann, john).
true.

?- ancestor(john, kate).
true.    % via mary -> peter -> kate
```

---

## 8. Simple Arithmetic Expression Evaluator

**File:** `task8_expression_evaluator.pl`

Evaluates nested arithmetic expressions written as Prolog terms, e.g. `add(3, mul(2, 4))`.

**Supported operators:** `add/2`, `sub/2`, `mul/2`, `div/2`

**Predicate:** `eval(Expr, Result)`

```prolog
?- eval(add(3, mul(2, 4)), X).
X = 11.

?- eval(mul(add(2, 3), sub(10, 5)), X).
X = 25.
```

---

## 9. Count Occurrences of an Element

**File:** `task9_count_elem.pl`

Counts how many times a given element appears in a list.

**Predicate:** `count_elem(List, Elem, Count)`

```prolog
?- count_elem([1, 2, 3, 2, 4, 2, 5], 2, X).
X = 3.

?- count_elem([a, b, a, c, a], a, X).
X = 3.
```

---

## 10. Find All Siblings

**File:** `task10_siblings.pl`

Uses `findall/3` to collect every sibling of a given individual based on shared parents.

**Sample facts:**

```
parent(alice, bob).
parent(alice, carol).
...
```

**Predicate:** `siblings_of(X, Siblings)` — `Siblings` is the list of all siblings of `X`.

```prolog
?- siblings_of(bob, X).
X = [carol].

?- siblings_of(emma, X).
X = [frank].
```

---

## 11. N-th Element of a List

**File:** `task11_nth_element.pl`

Retrieves the N-th element of a list using 1-based indexing.

**Predicate:** `nth_element(N, List, Elem)`

```prolog
?- nth_element(3, [a, b, c, d, e], X).
X = c.

?- nth_element(1, [10, 20, 30], X).
X = 10.
```

---

## 12. Check if List is Sorted

**File:** `task12_sorted.pl`

Succeeds if the list is sorted in ascending (non-decreasing) order.

**Predicate:** `sorted(List)`

```prolog
?- sorted([1, 2, 3, 4, 5]).
true.

?- sorted([1, 3, 2, 4]).
false.

?- sorted([1, 5, 5, 10]).
true.
```

---

## 13. Check Prime Number

**File:** `task13_is_prime.pl`

Tests whether a positive integer is prime. Checks divisibility by 2 and odd divisors up to `sqrt(N)`.

**Predicate:** `is_prime(N)`

```prolog
?- is_prime(7).
true.

?- is_prime(11).
true.

?- is_prime(9).
false.

?- is_prime(15).
false.
```

---

## 14. Fibonacci Series Generator (Non-memoized)

**File:** `task14_fibonacci.pl`

Computes the N-th Fibonacci number using naive recursion (no memoization).

**Predicate:** `fib(N, F)` — `F` is the N-th Fibonacci number (with `fib(0) = 0`, `fib(1) = 1`).

```prolog
?- fib(0, X).
X = 0.

?- fib(1, X).
X = 1.

?- fib(7, X).
X = 13.

?- fib(10, X).
X = 55.
```

> Note: Because this is the naive recursive form, large `N` values (e.g. `N > 35`) will be slow.

---

## 15. Family Tree - Uncle/Aunt Relation

**File:** `task15_uncle_aunt.pl`

Defines `uncle/2` and `aunt/2` based on a `parent/2` family database and a `sibling/2` relation.

**Sample family tree:**

- Tom and Emily are parents of Bob and Alice (and also Emma and Frank, with John).
- Bob and Alice are siblings.
- Dave is the child of Alice; Charlie is the child of Bob.

**Predicates:**

- `sibling(X, Y)` — `X` and `Y` share at least one parent.
- `uncle(U, N)` — `U` is the uncle of `N` (i.e. the brother of one of `N`'s parents).
- `aunt(A, N)` — `A` is the aunt of `N` (i.e. the sister of one of `N`'s parents).

```prolog
?- uncle(bob, dave).
true.    % Bob is the brother of Alice, who is Dave's parent

?- aunt(alice, charlie).
true.    % Alice is the sister of Bob, who is Charlie's parent

?- sibling(bob, alice).
true.

?- aunt(alice, frank).
true.
```

---

## File Summary

| # | File | Main Predicate(s) |
|---|------|-------------------|
| 1 | `task1_factorial.pl` | `factorial/2` |
| 2 | `task2_sum_even.pl` | `sum_even/2` |
| 3 | `task3_palindrome.pl` | `palindrome/1` |
| 4 | `task4_max_list.pl` | `max_list/2` |
| 5 | `task5_list_length.pl` | `list_length/2` |
| 6 | `task6_reverse_list.pl` | `reverse_list/2` |
| 7 | `task7_ancestor.pl` | `ancestor/2`, `descendant/2` |
| 8 | `task8_expression_evaluator.pl` | `eval/2` |
| 9 | `task9_count_elem.pl` | `count_elem/3` |
| 10 | `task10_siblings.pl` | `siblings_of/2` |
| 11 | `task11_nth_element.pl` | `nth_element/3` |
| 12 | `task12_sorted.pl` | `sorted/1` |
| 13 | `task13_is_prime.pl` | `is_prime/1` |
| 14 | `task14_fibonacci.pl` | `fib/2` |
| 15 | `task15_uncle_aunt.pl` | `uncle/2`, `aunt/2`, `sibling/2` |

---

## Notes on Style

- Each file is self-contained — it can be consulted on its own without loading other files.
- Helper predicates are included where needed (e.g. `last_element/2`, `remove_last/2` for the palindrome task).
- All predicates use only the standard library built-ins (`is/2`, `mod/2`, `max/2`, `findall/3`, `append/3`).
- The Fibonacci predicate is intentionally **non-memoized** as the task requires the naive recursive version.

---

## Quick Test Script

To try every predicate at once, run them interactively from SWI-Prolog:

```prolog
?- [task1_factorial],  factorial(5, F1), format('Factorial(5) = ~w~n', [F1]).
?- [task4_max_list],    max_list([3,1,4,1,5,9,2,6], M), format('Max = ~w~n', [M]).
?- [task8_expression_evaluator], eval(add(3, mul(2, 4)), R), format('Expr = ~w~n', [R]).
?- [task13_is_prime],   (is_prime(7) -> write('7 is prime') ; write('7 not prime')), nl.
?- [task14_fibonacci],  fib(10, F), format('Fib(10) = ~w~n', [F]).
```