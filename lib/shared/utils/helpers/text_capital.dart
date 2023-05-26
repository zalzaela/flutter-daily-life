String capitalize(String text) {
  if (text.isEmpty) {
    return '';
  }
  return text
      .split(' ')
      .map((word) => word[0].toUpperCase() + word.substring(1))
      .join(' ');
}
