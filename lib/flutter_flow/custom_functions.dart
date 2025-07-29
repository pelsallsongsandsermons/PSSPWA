import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';

/// used to remove spaces from image urls
String? replaceSpacesWithEncoding(String? input) {
  // replace spaces in the input string with %20
  if (input == null) return null; // Check for null input
  return input.replaceAll(' ', '%20'); // Replace spaces with %20
}
