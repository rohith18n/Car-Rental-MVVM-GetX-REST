import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

GetSnackBar getxSnackbar(
    {required String message, required bool isError, String? title}) {
  return GetSnackBar(
    snackPosition: SnackPosition.TOP,
    isDismissible: true,
    duration: const Duration(seconds: 3),
    title: isError ? title ?? 'Failed' : title ?? 'Success',
    messageText: Text(
      message,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
    ),
    margin: const EdgeInsets.all(15),
    borderRadius: 8,
    backgroundColor: isError ? Colors.red : Colors.green,
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    icon: Icon(
      isError ? Icons.warning_amber_rounded : Icons.done,
      color: Colors.white,
      size: 28,
    ),
  );
}
