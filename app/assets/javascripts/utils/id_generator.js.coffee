define([], () ->
  currentId = 0
  {
    generateId: () -> "" + currentId++
  }
)