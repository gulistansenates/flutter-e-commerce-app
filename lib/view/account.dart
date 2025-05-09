import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Account extends ConsumerStatefulWidget {
  const Account({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WishlistState();
}

class _WishlistState extends ConsumerState<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("account")));
  }
}
