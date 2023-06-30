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

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Product`
  String get app_name {
    return Intl.message(
      'Product',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to notes app`
  String get welcome_notes_app {
    return Intl.message(
      'Welcome to notes app',
      name: 'welcome_notes_app',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get sign_in {
    return Intl.message(
      'Sign In',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Field is required`
  String get field_is_required {
    return Intl.message(
      'Field is required',
      name: 'field_is_required',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email`
  String get invalid_email {
    return Intl.message(
      'Invalid email',
      name: 'invalid_email',
      desc: '',
      args: [],
    );
  }

  /// `Invalid filed`
  String get invalid_filed {
    return Intl.message(
      'Invalid filed',
      name: 'invalid_filed',
      desc: '',
      args: [],
    );
  }

  /// `Note details`
  String get note_details {
    return Intl.message(
      'Note details',
      name: 'note_details',
      desc: '',
      args: [],
    );
  }

  /// `Hii! You don't have any notes`
  String get you_dont_have_notes {
    return Intl.message(
      'Hii! You don\'t have any notes',
      name: 'you_dont_have_notes',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get sign_up {
    return Intl.message(
      'Sign Up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email_lable {
    return Intl.message(
      'Email',
      name: 'email_lable',
      desc: '',
      args: [],
    );
  }

  /// `Enter email`
  String get email_hint {
    return Intl.message(
      'Enter email',
      name: 'email_hint',
      desc: '',
      args: [],
    );
  }

  /// `Enter password`
  String get password_hint {
    return Intl.message(
      'Enter password',
      name: 'password_hint',
      desc: '',
      args: [],
    );
  }

  /// `Enter confirm password`
  String get confirm_password_hint {
    return Intl.message(
      'Enter confirm password',
      name: 'confirm_password_hint',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get confirm_password_lable {
    return Intl.message(
      'Confirm password',
      name: 'confirm_password_lable',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password_lable {
    return Intl.message(
      'Password',
      name: 'password_lable',
      desc: '',
      args: [],
    );
  }

  /// `Join`
  String get join {
    return Intl.message(
      'Join',
      name: 'join',
      desc: '',
      args: [],
    );
  }

  /// `LogOut`
  String get log_out {
    return Intl.message(
      'LogOut',
      name: 'log_out',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get create_account {
    return Intl.message(
      'Create Account',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get dashboard {
    return Intl.message(
      'Dashboard',
      name: 'dashboard',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `New note`
  String get new_note {
    return Intl.message(
      'New note',
      name: 'new_note',
      desc: '',
      args: [],
    );
  }

  /// `Update note`
  String get update_note {
    return Intl.message(
      'Update note',
      name: 'update_note',
      desc: '',
      args: [],
    );
  }

  /// `Note`
  String get note {
    return Intl.message(
      'Note',
      name: 'note',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Write your note`
  String get new_note_hint {
    return Intl.message(
      'Write your note',
      name: 'new_note_hint',
      desc: '',
      args: [],
    );
  }

  /// `New note`
  String get new_note_lable {
    return Intl.message(
      'New note',
      name: 'new_note_lable',
      desc: '',
      args: [],
    );
  }

  /// `Write header`
  String get header_hint {
    return Intl.message(
      'Write header',
      name: 'header_hint',
      desc: '',
      args: [],
    );
  }

  /// `Header`
  String get header_lable {
    return Intl.message(
      'Header',
      name: 'header_lable',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
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
