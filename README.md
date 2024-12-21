# Unhandled Network Exceptions in Dart Async Functions

This repository demonstrates a common error in Dart asynchronous programming: incorrectly handling exceptions during network requests.  Failure to properly handle these exceptions can result in silent failures and unexpected application behavior.

The `bug.dart` file contains code that demonstrates the problematic scenario. The `bugSolution.dart` file shows the corrected approach, ensuring that exceptions are caught and handled gracefully.

## Problem:

The initial code lacks comprehensive exception handling for network requests. Errors during the fetch process might not be explicitly caught or handled, leading to unexpected app behavior or crashes.

## Solution:

The solution involves using a `try-catch` block to handle potential exceptions. The `catch` block logs the error and rethrows the exception allowing higher-level functions to handle the error or provide feedback to the user.