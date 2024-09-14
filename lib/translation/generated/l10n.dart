// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class Trans {
  Trans();

  static Trans? _current;

  static Trans get current {
    assert(_current != null,
        'No instance of Trans was loaded. Try to initialize the Trans delegate before accessing Trans.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Trans> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Trans();
      Trans._current = instance;

      return instance;
    });
  }

  static Trans of(BuildContext context) {
    final instance = Trans.maybeOf(context);
    assert(instance != null,
        'No instance of Trans present in the widget tree. Did you add Trans.delegate in localizationsDelegates?');
    return instance!;
  }

  static Trans? maybeOf(BuildContext context) {
    return Localizations.of<Trans>(context, Trans);
  }

  /// `สวัสดี ชาวโลก`
  String get hello_world {
    return Intl.message(
      'สวัสดี ชาวโลก',
      name: 'hello_world',
      desc: '',
      args: [],
    );
  }

  /// `ลงทะเบียนด้วยบัญชีโซเชียลมีเดีย`
  String get register_external_title {
    return Intl.message(
      'ลงทะเบียนด้วยบัญชีโซเชียลมีเดีย',
      name: 'register_external_title',
      desc: '',
      args: [],
    );
  }

  /// `หากท่านมีบัญชีอยู่แล้ว?`
  String get register_external_detail {
    return Intl.message(
      'หากท่านมีบัญชีอยู่แล้ว?',
      name: 'register_external_detail',
      desc: '',
      args: [],
    );
  }

  /// `เข้าสู่ระบบ`
  String get register_external_text_button {
    return Intl.message(
      'เข้าสู่ระบบ',
      name: 'register_external_text_button',
      desc: '',
      args: [],
    );
  }

  /// `เข้าสู่ระบบด้วยบัญชีโซเชียลมีเดีย`
  String get login_external_title {
    return Intl.message(
      'เข้าสู่ระบบด้วยบัญชีโซเชียลมีเดีย',
      name: 'login_external_title',
      desc: '',
      args: [],
    );
  }

  /// `ยังไม่มีบัญชี`
  String get login_external_detail {
    return Intl.message(
      'ยังไม่มีบัญชี',
      name: 'login_external_detail',
      desc: '',
      args: [],
    );
  }

  /// `สร้างบัญชีใหม่`
  String get login_external_text_button {
    return Intl.message(
      'สร้างบัญชีใหม่',
      name: 'login_external_text_button',
      desc: '',
      args: [],
    );
  }

  /// `ระบุ`
  String get hint_text {
    return Intl.message(
      'ระบุ',
      name: 'hint_text',
      desc: '',
      args: [],
    );
  }

  /// `กรุณาระบุ`
  String get validate_text {
    return Intl.message(
      'กรุณาระบุ',
      name: 'validate_text',
      desc: '',
      args: [],
    );
  }

  /// `สมัครสมาชิกใหม่`
  String get register_title {
    return Intl.message(
      'สมัครสมาชิกใหม่',
      name: 'register_title',
      desc: '',
      args: [],
    );
  }

  /// `ชื่อ`
  String get register_name {
    return Intl.message(
      'ชื่อ',
      name: 'register_name',
      desc: '',
      args: [],
    );
  }

  /// `นามสกุล`
  String get register_surname {
    return Intl.message(
      'นามสกุล',
      name: 'register_surname',
      desc: '',
      args: [],
    );
  }

  /// `อีเมล`
  String get register_email {
    return Intl.message(
      'อีเมล',
      name: 'register_email',
      desc: '',
      args: [],
    );
  }

  /// `สร้างรหัสผ่าน`
  String get register_password {
    return Intl.message(
      'สร้างรหัสผ่าน',
      name: 'register_password',
      desc: '',
      args: [],
    );
  }

  /// `ยืนยันรหัสผ่าน`
  String get register_password_confirm {
    return Intl.message(
      'ยืนยันรหัสผ่าน',
      name: 'register_password_confirm',
      desc: '',
      args: [],
    );
  }

  /// `รหัสผ่านอีกครั้ง`
  String get register_password_hint {
    return Intl.message(
      'รหัสผ่านอีกครั้ง',
      name: 'register_password_hint',
      desc: '',
      args: [],
    );
  }

  /// `ถัดไป`
  String get register_next_button {
    return Intl.message(
      'ถัดไป',
      name: 'register_next_button',
      desc: '',
      args: [],
    );
  }

  /// `เข้าสู่ระบบ`
  String get login_title {
    return Intl.message(
      'เข้าสู่ระบบ',
      name: 'login_title',
      desc: '',
      args: [],
    );
  }

  /// `อีเมล์`
  String get login_email_label {
    return Intl.message(
      'อีเมล์',
      name: 'login_email_label',
      desc: '',
      args: [],
    );
  }

  /// `ระบุอีเมล์`
  String get login_email_hint_label {
    return Intl.message(
      'ระบุอีเมล์',
      name: 'login_email_hint_label',
      desc: '',
      args: [],
    );
  }

  /// `รหัสผ่าน`
  String get login_password_label {
    return Intl.message(
      'รหัสผ่าน',
      name: 'login_password_label',
      desc: '',
      args: [],
    );
  }

  /// `ระบุรหัสผ่าน`
  String get login_password_hint_label {
    return Intl.message(
      'ระบุรหัสผ่าน',
      name: 'login_password_hint_label',
      desc: '',
      args: [],
    );
  }

  /// `จดจำรหัสผ่านของฉัน`
  String get login_remember_me_label {
    return Intl.message(
      'จดจำรหัสผ่านของฉัน',
      name: 'login_remember_me_label',
      desc: '',
      args: [],
    );
  }

  /// `ลืมรหัสผ่าน?`
  String get login_forgot_password_label {
    return Intl.message(
      'ลืมรหัสผ่าน?',
      name: 'login_forgot_password_label',
      desc: '',
      args: [],
    );
  }

  /// `เข้าสู่ระบบ`
  String get login_button_label {
    return Intl.message(
      'เข้าสู่ระบบ',
      name: 'login_button_label',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Trans> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'th'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Trans> load(Locale locale) => Trans.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
