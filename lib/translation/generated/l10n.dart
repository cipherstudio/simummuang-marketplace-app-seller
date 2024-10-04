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

  /// `ระบุเบอร์มือถือ`
  String get login_email_hint_label {
    return Intl.message(
      'ระบุเบอร์มือถือ',
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

  /// `สร้างรหัสผ่านใหม่`
  String get set_new_password_main_title {
    return Intl.message(
      'สร้างรหัสผ่านใหม่',
      name: 'set_new_password_main_title',
      desc: '',
      args: [],
    );
  }

  /// `สร้างรหัสผ่านใหม่`
  String get set_new_password_first_text_label {
    return Intl.message(
      'สร้างรหัสผ่านใหม่',
      name: 'set_new_password_first_text_label',
      desc: '',
      args: [],
    );
  }

  /// `ระบุรหัสผ่านใหม่`
  String get set_new_password_first_text_form_field_hint {
    return Intl.message(
      'ระบุรหัสผ่านใหม่',
      name: 'set_new_password_first_text_form_field_hint',
      desc: '',
      args: [],
    );
  }

  /// `ยืนยันรหัสผ่านใหม่`
  String get set_new_password_second_text_label {
    return Intl.message(
      'ยืนยันรหัสผ่านใหม่',
      name: 'set_new_password_second_text_label',
      desc: '',
      args: [],
    );
  }

  /// `ระบุรหัสผ่านใหม่อีกครั้ง`
  String get set_new_password_second_text_form_field_hint {
    return Intl.message(
      'ระบุรหัสผ่านใหม่อีกครั้ง',
      name: 'set_new_password_second_text_form_field_hint',
      desc: '',
      args: [],
    );
  }

  /// `ตั้งรหัสผ่านใหม่`
  String get set_new_password_button_label {
    return Intl.message(
      'ตั้งรหัสผ่านใหม่',
      name: 'set_new_password_button_label',
      desc: '',
      args: [],
    );
  }

  /// `ยังไม่มีบัญชี?`
  String get set_new_password_not_have_account_label {
    return Intl.message(
      'ยังไม่มีบัญชี?',
      name: 'set_new_password_not_have_account_label',
      desc: '',
      args: [],
    );
  }

  /// `สร้างบัญชีใหม่`
  String get set_new_password_create_new_account_label {
    return Intl.message(
      'สร้างบัญชีใหม่',
      name: 'set_new_password_create_new_account_label',
      desc: '',
      args: [],
    );
  }

  /// `เบอร์โทรศัพท์`
  String get register_phone {
    return Intl.message(
      'เบอร์โทรศัพท์',
      name: 'register_phone',
      desc: '',
      args: [],
    );
  }

  /// `กดรับ OTP`
  String get register_request_otp {
    return Intl.message(
      'กดรับ OTP',
      name: 'register_request_otp',
      desc: '',
      args: [],
    );
  }

  /// `OTP`
  String get register_otp {
    return Intl.message(
      'OTP',
      name: 'register_otp',
      desc: '',
      args: [],
    );
  }

  /// `รหัสอ้างอิง:`
  String get register_ref_code {
    return Intl.message(
      'รหัสอ้างอิง:',
      name: 'register_ref_code',
      desc: '',
      args: [],
    );
  }

  /// `ยอมรับข้อตกลงและเงื่อนไขการสมัครสมาชิก`
  String get register_consent1 {
    return Intl.message(
      'ยอมรับข้อตกลงและเงื่อนไขการสมัครสมาชิก',
      name: 'register_consent1',
      desc: '',
      args: [],
    );
  }

  /// `รับข่าวสารจากสี่มุมเมืองออนไลน์`
  String get register_consent2 {
    return Intl.message(
      'รับข่าวสารจากสี่มุมเมืองออนไลน์',
      name: 'register_consent2',
      desc: '',
      args: [],
    );
  }

  /// `ยืนยัน`
  String get register_confirm_button {
    return Intl.message(
      'ยืนยัน',
      name: 'register_confirm_button',
      desc: '',
      args: [],
    );
  }

  /// `กลับ`
  String get register_back_button {
    return Intl.message(
      'กลับ',
      name: 'register_back_button',
      desc: '',
      args: [],
    );
  }

  /// `ลืมรหัสผ่าน?`
  String get forgetpassword_title {
    return Intl.message(
      'ลืมรหัสผ่าน?',
      name: 'forgetpassword_title',
      desc: '',
      args: [],
    );
  }

  /// `โปรดระบุเบอร์โทรศัพท์\nคุณจะได้รับลิงค์สำหรับเปลี่ยนรหัสผ่าน`
  String get forgetpassword_subtitle {
    return Intl.message(
      'โปรดระบุเบอร์โทรศัพท์\nคุณจะได้รับลิงค์สำหรับเปลี่ยนรหัสผ่าน',
      name: 'forgetpassword_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `เบอร์โทรศัพท์`
  String get forgetpassword_mail_or_phone {
    return Intl.message(
      'เบอร์โทรศัพท์',
      name: 'forgetpassword_mail_or_phone',
      desc: '',
      args: [],
    );
  }

  /// `ยืนยัน`
  String get forgetpassword_confirm {
    return Intl.message(
      'ยืนยัน',
      name: 'forgetpassword_confirm',
      desc: '',
      args: [],
    );
  }

  /// `หากท่านยังไม่มีบัญชี`
  String get forgetpassword_does_not_account {
    return Intl.message(
      'หากท่านยังไม่มีบัญชี',
      name: 'forgetpassword_does_not_account',
      desc: '',
      args: [],
    );
  }

  /// `สร้างบัญชีใหม่`
  String get forgetpassword_create_account {
    return Intl.message(
      'สร้างบัญชีใหม่',
      name: 'forgetpassword_create_account',
      desc: '',
      args: [],
    );
  }

  /// `ระบบส่งจัดส่งข้อความ OTP ไปยังหมายเลขโทรศัพท์`
  String get forgetpassword_otp_title {
    return Intl.message(
      'ระบบส่งจัดส่งข้อความ OTP ไปยังหมายเลขโทรศัพท์',
      name: 'forgetpassword_otp_title',
      desc: '',
      args: [],
    );
  }

  /// `ระบุ OTP ของคุณ`
  String get forgetpassword_fill_otp {
    return Intl.message(
      'ระบุ OTP ของคุณ',
      name: 'forgetpassword_fill_otp',
      desc: '',
      args: [],
    );
  }

  /// `รหัสอ้างอิง:`
  String get forgetpassword_ref_code {
    return Intl.message(
      'รหัสอ้างอิง:',
      name: 'forgetpassword_ref_code',
      desc: '',
      args: [],
    );
  }

  /// `หากยังไม่ได้รับ OTP? ขอรหัส OTP อีกครั้ง`
  String get forgetpassword_request_otp_title {
    return Intl.message(
      'หากยังไม่ได้รับ OTP? ขอรหัส OTP อีกครั้ง',
      name: 'forgetpassword_request_otp_title',
      desc: '',
      args: [],
    );
  }

  /// `แก้ไข`
  String get component_button_label_edit {
    return Intl.message(
      'แก้ไข',
      name: 'component_button_label_edit',
      desc: '',
      args: [],
    );
  }

  /// `ตั้งค่า`
  String get seller_setting_title {
    return Intl.message(
      'ตั้งค่า',
      name: 'seller_setting_title',
      desc: '',
      args: [],
    );
  }

  /// `ข้อมูลร้านค้า`
  String get seller_setting_tab_1 {
    return Intl.message(
      'ข้อมูลร้านค้า',
      name: 'seller_setting_tab_1',
      desc: '',
      args: [],
    );
  }

  /// `รายละเอียดร้านค้า`
  String get seller_setting_tab_2 {
    return Intl.message(
      'รายละเอียดร้านค้า',
      name: 'seller_setting_tab_2',
      desc: '',
      args: [],
    );
  }

  /// `บันทึกข้อมูล`
  String get seller_setting_save {
    return Intl.message(
      'บันทึกข้อมูล',
      name: 'seller_setting_save',
      desc: '',
      args: [],
    );
  }

  /// `ดูตัวอย่าง`
  String get seller_setting_view {
    return Intl.message(
      'ดูตัวอย่าง',
      name: 'seller_setting_view',
      desc: '',
      args: [],
    );
  }

  /// `ยกเลิก`
  String get seller_setting_cancle {
    return Intl.message(
      'ยกเลิก',
      name: 'seller_setting_cancle',
      desc: '',
      args: [],
    );
  }

  /// `รายละเอียด`
  String get seller_setting_detail_title {
    return Intl.message(
      'รายละเอียด',
      name: 'seller_setting_detail_title',
      desc: '',
      args: [],
    );
  }

  /// `แผนที่`
  String get seller_setting_map {
    return Intl.message(
      'แผนที่',
      name: 'seller_setting_map',
      desc: '',
      args: [],
    );
  }

  /// `รูปโปรไฟล์ร้าน`
  String get seller_setting_store_image_label {
    return Intl.message(
      'รูปโปรไฟล์ร้าน',
      name: 'seller_setting_store_image_label',
      desc: '',
      args: [],
    );
  }

  /// `ชื่อร้านค้า`
  String get seller_setting_store_name_label {
    return Intl.message(
      'ชื่อร้านค้า',
      name: 'seller_setting_store_name_label',
      desc: '',
      args: [],
    );
  }

  /// `ประเภทตลาด`
  String get seller_setting_store_type_label {
    return Intl.message(
      'ประเภทตลาด',
      name: 'seller_setting_store_type_label',
      desc: '',
      args: [],
    );
  }

  /// `ข้อมูลผู้ขาย`
  String get seller_setting_seller_information_label {
    return Intl.message(
      'ข้อมูลผู้ขาย',
      name: 'seller_setting_seller_information_label',
      desc: '',
      args: [],
    );
  }

  /// `ตลาด`
  String get seller_setting_store_label_suffix_text {
    return Intl.message(
      'ตลาด',
      name: 'seller_setting_store_label_suffix_text',
      desc: '',
      args: [],
    );
  }

  /// `แผงค้า`
  String get seller_setting_store_zone_suffix_text {
    return Intl.message(
      'แผงค้า',
      name: 'seller_setting_store_zone_suffix_text',
      desc: '',
      args: [],
    );
  }

  /// `เวลาเปิด - ปิดร้าน`
  String get seller_setting_store_opening_hours_suffix_text {
    return Intl.message(
      'เวลาเปิด - ปิดร้าน',
      name: 'seller_setting_store_opening_hours_suffix_text',
      desc: '',
      args: [],
    );
  }

  /// `เบอร์โทร`
  String get seller_setting_store_tel_num_suffix_text {
    return Intl.message(
      'เบอร์โทร',
      name: 'seller_setting_store_tel_num_suffix_text',
      desc: '',
      args: [],
    );
  }

  /// `ชื่อ-นามสกุล`
  String get seller_setting_seller_name_suffix_text {
    return Intl.message(
      'ชื่อ-นามสกุล',
      name: 'seller_setting_seller_name_suffix_text',
      desc: '',
      args: [],
    );
  }

  /// `เบอร์ติดต่อ`
  String get seller_setting_seller_tel_num_suffix_text {
    return Intl.message(
      'เบอร์ติดต่อ',
      name: 'seller_setting_seller_tel_num_suffix_text',
      desc: '',
      args: [],
    );
  }

  /// `อีเมล`
  String get seller_setting_seller_email_suffix_text {
    return Intl.message(
      'อีเมล',
      name: 'seller_setting_seller_email_suffix_text',
      desc: '',
      args: [],
    );
  }

  /// `ที่อยู่`
  String get seller_setting_seller_suffix_text {
    return Intl.message(
      'ที่อยู่',
      name: 'seller_setting_seller_suffix_text',
      desc: '',
      args: [],
    );
  }

  /// `หน้าแรก`
  String get bottom_nav_first_page_label {
    return Intl.message(
      'หน้าแรก',
      name: 'bottom_nav_first_page_label',
      desc: '',
      args: [],
    );
  }

  /// `สินค้าเพื่อคุณ`
  String get bottom_nav_for_you_page_label {
    return Intl.message(
      'สินค้าเพื่อคุณ',
      name: 'bottom_nav_for_you_page_label',
      desc: '',
      args: [],
    );
  }

  /// `สินค้า`
  String get bottom_nav_products_page_label {
    return Intl.message(
      'สินค้า',
      name: 'bottom_nav_products_page_label',
      desc: '',
      args: [],
    );
  }

  /// `คำสั่งซื้อ`
  String get bottom_nav_orders_page_label {
    return Intl.message(
      'คำสั่งซื้อ',
      name: 'bottom_nav_orders_page_label',
      desc: '',
      args: [],
    );
  }

  /// `บัญชี`
  String get bottom_nav_account_page_label {
    return Intl.message(
      'บัญชี',
      name: 'bottom_nav_account_page_label',
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
