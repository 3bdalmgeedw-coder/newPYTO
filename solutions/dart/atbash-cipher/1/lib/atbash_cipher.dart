class AtbashCipher {
  Map<String, String> Atbash_cipher = {
    'a': 'z', 'b': 'y', 'c': 'x', 'd': 'w', 'e': 'v', 'f': 'u', 'g': 't',
    'h': 's', 'i': 'r', 'j': 'q', 'k': 'p', 'l': 'o', 'm': 'n', 'n': 'm',
    'o': 'l', 'p': 'k', 'q': 'j', 'r': 'i', 's': 'h', 't': 'g', 'u': 'f',
    'v': 'e', 'w': 'd', 'x': 'c', 'y': 'b', 'z': 'a'
  };

  String encode(String text) {
    text = text.toLowerCase();
    var result = "";
    var Final_Result = "";
    int count = 0; 
    
    for (var letter in text.split('')) {
      if (Atbash_cipher.containsKey(letter)) {
        result += Atbash_cipher[letter]!;
      } else if (int.tryParse(letter) != null) {
        result += letter; // الاحتفاظ بالأرقام كما هي
      }
      // أي مسافة أو علامة ترقيم يتم تجاهلها تلقائياً ولا تُضاف لـ result
    }
      
    for (int i = 0; i < result.length; i++) {
      Final_Result += result[i];
      count++;
        if (count == 5) {
          Final_Result += " ";
          count = 0; 
        }
    }

    return Final_Result.trim();
  }

  String decode(String text) {
    text = text.toLowerCase();
    var result = "";
    // إزالة أي مسافات فارغة من النص المشفر قبل فكه
    text = text.replaceAll(' ', '');
    for (var letter in text.split('')) {
      result += Atbash_cipher[letter] ?? letter;
    }
    return result;
  }
}