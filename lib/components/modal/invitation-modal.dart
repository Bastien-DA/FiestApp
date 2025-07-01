import 'package:fiestapp/components/button/button.component.dart';
import 'package:fiestapp/provider/event/selected-event.provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class InvitationModal extends ConsumerStatefulWidget {
  const InvitationModal({super.key});

  @override
  ConsumerState<InvitationModal> createState() => _InvitationModalState();
}

class _InvitationModalState extends ConsumerState<InvitationModal> {
  @protected
  late QrImage qrImage;

  late String fullInvitationLink;

  @override
  void initState() {
    super.initState();

    final selectedEvent = ref.read(selectedEventProvider);

    if (selectedEvent == null) {
      fullInvitationLink = 'fiestapp://invitation/undefined';
      qrImage = QrImage(
        QrCode(1, QrErrorCorrectLevel.L)..addData(fullInvitationLink),
      );
    } else {
      fullInvitationLink = 'fiestapp://invitation/${selectedEvent.guid}';
      final qrCode = QrCode(5, QrErrorCorrectLevel.H)
        ..addData(fullInvitationLink);
      qrImage = QrImage(qrCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
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
          const SizedBox(height: 20),
          const Text(
            'Scanner pour rejoindre',
            style: TextStyle(
              color: Color(0xffE15B42),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "Une soirée c'est bien, mais avec des invités c'est mieux !",
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          CustomButton(
            label: 'Copier le lien',
            icon: FontAwesomeIcons.copy,
            onPressed: () async {
              await Clipboard.setData(ClipboardData(text: fullInvitationLink));
              if (mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Lien copié avec succès")),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
