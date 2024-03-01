import 'package:flutter/material.dart';
import 'NotificationCard.dart'; // Importation de la classe NotificationCard

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          NotificationCard(
            key: UniqueKey(),
            title: 'Notification de confirmation de réservation',
            description:
                "Félicitations ! Votre réservation à l'hôtel Luxe Palace a été confirmée avec succès pour les dates du 20 février au 25 février. Profitez d'un séjour de luxe avec une vue imprenable sur la ville.",
            date: '20 février 2024', // Ajout de la date
            titleColor: Colors.blue[900]!,
            subtitleColor: Colors.grey,
          ),
          NotificationCard(
            key: UniqueKey(),
            title: 'Notification de rappel de séjour imminent',
            description:
                "Votre séjour à l'hôtel Sunshine approche à grands pas ! Nous voulions vous rappeler que votre enregistrement est prévu pour le 22 février à 14h. Nous avons hâte de vous accueillir.",
            date: '21 février 2024', // Ajout de la date
            titleColor: Colors.blue[900]!,
            subtitleColor: Colors.grey,
          ),
          NotificationCard(
            key: UniqueKey(),
            title: 'Notification de modification de réservation',
            description:
                "Votre réservation à l'hôtel Seaview a été modifiée avec succès. Vos nouvelles dates de séjour sont du 25 février au 28 février. Nous espérons que ce changement vous convient.",
            date: '22 février 2024', // Ajout de la date
            titleColor: Colors.blue[900]!,
            subtitleColor: Colors.grey,
          ),
          NotificationCard(
            key: UniqueKey(),
            title: 'Notification d\'offres spéciales',
            description:
                "Ne manquez pas notre promotion exclusive ! Réservez dès maintenant et économisez 20% sur votre prochain séjour à l'hôtel Moonlight. Offre limitée dans le temps, réservez dès aujourd'hui !",
            date: '23 février 2024', // Ajout de la date
            titleColor: Colors.blue[900]!,
            subtitleColor: Colors.grey,
          ),
          NotificationCard(
            key: UniqueKey(),
            title: 'Notification de commentaires et évaluations',
            description:
                "Votre avis compte ! Partagez votre expérience de séjour à l'hôtel Starlight et aidez d'autres voyageurs à choisir le meilleur hébergement. Cliquez sur le lien pour laisser votre commentaire maintenant.",
            date: '24 février 2024', // Ajout de la date
            titleColor: Colors.blue[900]!,
            subtitleColor: Colors.grey,
          ),
          // Ajout de deux autres notifications
          NotificationCard(
            key: UniqueKey(),
            title: 'Notification importante',
            description:
                "Veuillez noter que notre système de réservation sera en maintenance le 26 février 2024 de 23h à 3h. Nous nous excusons pour tout inconvénient que cela pourrait causer.",
            date: '25 février 2024', // Ajout de la date
            titleColor: Colors.blue[900]!,
            subtitleColor: Colors.grey,
          ),
          NotificationCard(
            key: UniqueKey(),
            title: 'Notification de changement de politique',
            description:
                "À partir du 27 février 2024, notre politique d'annulation sera modifiée. Veuillez consulter notre site Web pour plus de détails.",
            date: '26 février 2024', // Ajout de la date
            titleColor: Colors.blue[900]!,
            subtitleColor: Colors.grey,
          ),
          // Alignement de la date à gauche en bas de l'écran
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                '20 février 2024',
                style: TextStyle(color: Colors.grey[700]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
