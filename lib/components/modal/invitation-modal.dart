import 'package:fiestapp/components/button/button.component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class InvitationModal extends StatefulWidget {
  const InvitationModal({super.key});

  @override
  State<InvitationModal> createState() => _InvitationModalState();
}

class _InvitationModalState extends State<InvitationModal> {
  @protected
  late QrImage qrImage;

  String invitationLink = 'fiestapp://invitation';

  @override
  void initState() {
    super.initState();

    final qrCode = QrCode(5, QrErrorCorrectLevel.H)..addData(invitationLink);

    qrImage = QrImage(qrCode);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 20,
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: PrettyQrView(
              qrImage: qrImage,
              decoration: const PrettyQrDecoration(
                shape: PrettyQrRoundedSymbol(color: Color(0xffE15B42)),
              ),
            ),
          ),
          Column(
            spacing: 8,
            children: [
              Text(
                'Scanner pour rejoindre',
                style: TextStyle(
                  color: Color(0xffE15B42),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Une soirée c'est bien, mais avec des invités c'est mieux !",
                textAlign: TextAlign.center,
              ),
            ],
          ),
          CustomButton(
            label: 'Copier le lien',
            icon: FontAwesomeIcons.copy,
            onPressed: () async {
              await Clipboard.setData(ClipboardData(text: invitationLink)).then(
                (_) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Lien copié avec succès")),
                  );
                },
              );
              // copied successfully
            },
          ),
        ],
      ),
    );
  }
}
