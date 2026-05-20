import 'package:apk_masjid/model/cndy_category_model.dart';
import 'package:apk_masjid/pages/auth/cndy_agenda.dart';
import 'package:apk_masjid/pages/auth/cndy_home_page.dart';
import 'package:apk_masjid/pages/auth/nbl_imam_masjid.dart';
import 'package:apk_masjid/pages/auth/nbl_tausiyah.dart';
import 'package:apk_masjid/pages/auth/nblbersih_skalarutin.dart';
import 'package:flutter/material.dart';

List<CndyCategoryModel> cats = [
  CndyCategoryModel(icon: Icons.mic, title: "Tausiyah", color: Colors.green, page: NblTausiyah()),
  CndyCategoryModel(icon: Icons.lock_clock, title: "Jadwal Imam Masjid", color: Colors.green, page: NblImamMasjid()),
  CndyCategoryModel(icon: Icons.cleaning_services, title: "Jadwal Kebersihan", color: Colors.green, page: NblbersihSkalarutin()),
  CndyCategoryModel(icon: Icons.person, title: "Takmir Masjid", color: Colors.green, page: CndyHomePage()),
  CndyCategoryModel(icon: Icons.perm_identity_rounded, title: "Remaja Masjid", color: Colors.green, page: CndyHomePage()),
  CndyCategoryModel(icon: Icons.note_alt_outlined, title: "Agenda", color: Colors.green, page: CndyAgenda()),
  ];