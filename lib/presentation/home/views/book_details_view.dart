import 'package:bookly/domain/models/book_models/book_volume.dart';
import 'package:flutter/material.dart';

import 'widgets/details/book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.bookVolumn});
  final BookVolume bookVolumn;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(bookVolume: bookVolumn),
      ),
    );
  }
}
