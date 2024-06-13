import 'package:flutter/material.dart';
import 'package:pretest/views/columncc.dart';
import 'package:pretest/views/columnce.dart';
import 'package:pretest/views/columncs.dart';
import 'package:pretest/views/columncst.dart';
import 'package:pretest/views/columnmc.dart';
import 'package:pretest/views/columnme.dart';
import 'package:pretest/views/columnms.dart';
import 'package:pretest/views/columnmsa.dart';
import 'package:pretest/views/columnmsb.dart';
import 'package:pretest/views/columnmse.dart';

class Column_page extends StatelessWidget {
  const Column_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column_Page'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Columnms_page()),
                    );
                  },
                  child: const Text('MainAxisAlignment.start'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Columnmc_page()),
                    );
                  },
                  child: const Text('MainAxisAlignment.center'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Columnme_page()),
                    );
                  },
                  child: const Text('MainAxisAlignment.end'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Columnmsb_page()),
                    );
                  },
                  child: const Text('MainAxisAlignment.spaceBetween'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Columnmsa_page()),
                    );
                  },
                  child: const Text('MainAxisAlignment.spaceAround'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Columnmse_page()),
                    );
                  },
                  child: const Text('MainAxisAlignment.spaceEvenly'),
                ),
              ],
            ),
            const VerticalDivider(
              width: 40,
              thickness: 2,
              color: Colors.grey,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Columncs_page()),
                    );
                  },
                  child: const Text('CrossAxisAlignment.start'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Columncc_page()),
                    );
                  },
                  child: const Text('CrossAxisAlignment.center'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Columnce_page()),
                    );
                  },
                  child: const Text('CrossAxisAlignment.end'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Columncst_page()),
                    );
                  },
                  child: const Text('CrossAxisAlignment.stretch'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
