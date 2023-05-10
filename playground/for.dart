void main(List<String> args) {
  for (var i = 0; i <= 10; i = i + 2) {
    print(i);
  }

  for (var i = 0; i <= 10; i++) {
    if (i % 2 == 0) continue;
    if (i > 7) break;
    print(i);
  }
}
