// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "hello_world": MessageLookupByLibrary.simpleMessage("Hello World"),
        "hint_text": MessageLookupByLibrary.simpleMessage("ระบุ"),
        "login_external_detail":
            MessageLookupByLibrary.simpleMessage("ยังไม่มีบัญชี"),
        "login_external_text_button":
            MessageLookupByLibrary.simpleMessage("สร้างบัญชีใหม่"),
        "login_external_title": MessageLookupByLibrary.simpleMessage(
            "เข้าสู่ระบบด้วยบัญชีโซเชียลมีเดีย"),
        "register_email": MessageLookupByLibrary.simpleMessage("อีเมล"),
        "register_external_detail":
            MessageLookupByLibrary.simpleMessage("หากท่านมีบัญชีอยู่แล้ว?"),
        "register_external_text_button":
            MessageLookupByLibrary.simpleMessage("เข้าสู่ระบบ"),
        "register_external_title": MessageLookupByLibrary.simpleMessage(
            "ลงทะเบียนด้วยบัญชีโซเชียลมีเดีย"),
        "register_name": MessageLookupByLibrary.simpleMessage("ชื่อ"),
        "register_next_button": MessageLookupByLibrary.simpleMessage("ถัดไป"),
        "register_password":
            MessageLookupByLibrary.simpleMessage("สร้างรหัสผ่าน"),
        "register_password_confirm":
            MessageLookupByLibrary.simpleMessage("ยืนยันรหัสผ่าน"),
        "register_password_hint":
            MessageLookupByLibrary.simpleMessage("รหัสผ่านอีกครั้ง"),
        "register_surname": MessageLookupByLibrary.simpleMessage("นามสกุล"),
        "register_title":
            MessageLookupByLibrary.simpleMessage("สมัครสมาชิกใหม่"),
        "validate_text": MessageLookupByLibrary.simpleMessage("กรุณาระบุ")
      };
}
