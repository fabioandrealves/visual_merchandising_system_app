import 'package:flutter/material.dart';

import '../../../../../menu/pricing/domain/entities/installment.dart';

class InstallmentsDropdown extends StatefulWidget {
  final List<Installment> installments;

  const InstallmentsDropdown({super.key, required this.installments});

  @override
  State<InstallmentsDropdown> createState() => _InstallmentsDropdownState();
}

class _InstallmentsDropdownState extends State<InstallmentsDropdown> {
  late Installment selected;

  @override
  void initState() {
    super.initState();
    selected = widget.installments.first;
  }

  List<DropdownMenuItem<Installment>> get _getInstallments {
    return widget.installments
        .map(
          (item) => DropdownMenuItem(
            value: item,
            child: Text('${item.quantity}x ${item.amount}'),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Installment>(
      value: selected,
      items: _getInstallments,
      onChanged: (value) {
        setState(() => selected = value!);
      },
    );
  }
}
