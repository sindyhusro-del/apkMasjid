import 'package:apk_masjid/model/cndy_category_model.dart';
import 'package:apk_masjid/pages/auth/cndy_home_page.dart';
import 'package:flutter/material.dart';

List<CndyCategoryModel> cats = [
  CndyCategoryModel(icon: Icons.mic, title: "TAUSIYAH", page: CndyHomePage()),
  CndyCategoryModel(icon: Icons.lock_clock,  title: "JADWAL IMAM MASJID", page: CndyHomePage()),
  CndyCategoryModel(icon: Icons.cleaning_services, title: "Jadwal Kebersihan masjid", page: CndyHomePage()),
  CndyCategoryModel(icon: Icons.people, title: "Takmir masjid", page: CndyHomePage()),
  CndyCategoryModel(icon: Icons.person, title: "Remaja Masjid", page: CndyHomePage()),
  CndyCategoryModel(icon: Icons.note_alt_outlined, title: "Agenda", page: CndyHomePage()),
];