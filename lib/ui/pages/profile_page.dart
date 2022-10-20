import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/profile_menu_item.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.chevron_left,
            size: 30,
          ),
        ),
        title: const Text(
          'My Profile',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 22),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/img_profile.png'),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.check_circle_rounded,
                          color: greenColor,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Zulfati Amelia',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(height: 40),
                ProfileMenuItem(
                  onTap: () {},
                  iconUrl: 'assets/ic_profile.png',
                  title: 'Edit Profile',
                ),
                ProfileMenuItem(
                  onTap: () {},
                  iconUrl: 'assets/ic_shield.png',
                  title: 'My PIN',
                ),
                ProfileMenuItem(
                  onTap: () {},
                  iconUrl: 'assets/ic_wallet.png',
                  title: 'Wallet Settings',
                ),
                ProfileMenuItem(
                  onTap: () {},
                  iconUrl: 'assets/ic_my_rewards.png',
                  title: 'My Rewards',
                ),
                ProfileMenuItem(
                  onTap: () {},
                  iconUrl: 'assets/ic_help.png',
                  title: 'Help Center',
                ),
                ProfileMenuItem(
                  onTap: () {},
                  iconUrl: 'assets/ic_logout.png',
                  title: 'Log Out',
                ),
              ],
            ),
          ),
          const SizedBox(height: 72),
          CustomTextButton(
            onPressed: () {},
            text: 'Report a Problem',
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
