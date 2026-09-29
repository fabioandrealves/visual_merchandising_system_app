import 'package:flutter/material.dart';

import '../../../../../menu/pricing/domain/entities/installment.dart';
import 'installment/installment_item.dart';

class InstallmentsDropdown extends StatefulWidget {
  final List<Installment> installments;

  const InstallmentsDropdown({super.key, required this.installments});

  @override
  State<InstallmentsDropdown> createState() => _InstallmentsDropdownState();
}

class _InstallmentsDropdownState extends State<InstallmentsDropdown> {
  late Installment _selected;

  @override
  void initState() {
    super.initState();
    _selected = widget.installments.first;
  }

  List<DropdownMenuItem<Installment>> get _getInstallments {
    return widget.installments
        .map(
          (item) => DropdownMenuItem(
            value: item,
            child: InstallmentItem(item: item),
          ),
        )
        .toList();
  }

  List<Widget> _selectItemBuilder(BuildContext context) {
    return widget.installments
        .map((item) => InstallmentItem(item: item))
        .toList();
  }

  void _onChangeSelectedItem(Installment? item){
    setState(() => _selected = item!);
  }

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.all(10),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<Installment>(
          value: _selected,
          dropdownColor: Colors.white,
          focusColor: Colors.white,
          items: _getInstallments,
          selectedItemBuilder: _selectItemBuilder,
          icon: Padding(
            padding: const EdgeInsets.only(right: 8.0, top: 4.0),
            child: RotatedBox(
              quarterTurns: -1,
              child: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.black,
                size: 18.0,
              ),
            ),
          ),
          enableFeedback: false,
          onChanged: _onChangeSelectedItem,
        ),
      ),
    );
  }
}
