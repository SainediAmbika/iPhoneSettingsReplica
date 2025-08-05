// import 'package:flutter/cupertino.dart';

// class SettingsPage extends StatefulWidget {
//   const SettingsPage({super.key});

//   @override
//   State<SettingsPage> createState() => _SettingsPageState();
// }

// class _SettingsPageState extends State<SettingsPage> {
//   bool airoplaneModeActivated = false;

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       child: CustomScrollView(
//         slivers: [
//           const CupertinoSliverNavigationBar(
//             largeTitle: Text('Settings'),
//           ),
//           SliverList(
//             delegate: SliverChildListDelegate([
//               const Padding(
//                 padding: EdgeInsets.all(12.0),
//                 child: CupertinoSearchTextField(),
//               ),

//               // Apple Account section
//               CupertinoListSection.insetGrouped(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 12.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: CupertinoColors.systemBackground
//                             .resolveFrom(context),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       padding: const EdgeInsets.all(12),
//                       child: Row(
//                         children: [
//                           /// Circular image
//                           ClipOval(
//                             child: Image.asset(
//                               'assets/profile.png',
//                               width: 55,
//                               height: 55,
//                               fit: BoxFit.cover,
//                             ),
//                           ),

//                           const SizedBox(width: 12),

//                           /// Texts
//                           Expanded(
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: const [
//                                 Text(
//                                   'Danny Rico',
//                                   style: TextStyle(
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                                 SizedBox(height: 2),
//                                 Text(
//                                   'Apple Account, iCloud, and more',
//                                   style: TextStyle(
//                                     fontSize: 13,
//                                     color: CupertinoColors.systemGrey,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),

//                           const Icon(CupertinoIcons.forward,
//                               color: CupertinoColors.systemGrey),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),

//               // Section 1
//               CupertinoListSection.insetGrouped(
//                 children: [
//                   _buildSwitchTile(
//                     icon: CupertinoIcons.airplane,
//                     color: CupertinoColors.activeOrange,
//                     title: 'Airplane Mode',
//                     value: airoplaneModeActivated,
//                     onChanged: (val) {
//                       setState(() => airoplaneModeActivated = val);
//                     },
//                   ),
//                   _buildIconTile(
//                     icon: CupertinoIcons.wifi,
//                     color: CupertinoColors.activeBlue,
//                     title: 'Wi-Fi',
//                   ),
//                   _buildTrailingTextTile(
//                     icon: CupertinoIcons.bluetooth,
//                     color: CupertinoColors.activeBlue,
//                     title: 'Bluetooth',
//                     trailingText: 'On',
//                   ),
//                   _buildIconTile(
//                     icon: CupertinoIcons.antenna_radiowaves_left_right,
//                     color: CupertinoColors.activeGreen,
//                     title: 'Cellular',
//                   ),
//                   _buildIconTile(
//                     icon: CupertinoIcons.battery_full,
//                     color: CupertinoColors.activeGreen,
//                     title: 'Battery',
//                   ),
//                 ],
//               ),

//               // Section 2
//               CupertinoListSection.insetGrouped(
//                 children: [
//                   _buildIconTile(
//                     icon: CupertinoIcons.settings,
//                     color: CupertinoColors.systemGrey,
//                     title: 'General',
//                   ),
//                   _buildImageTile(
//                     imagePath: 'assets/accessibility.png',
//                     color: CupertinoColors.activeBlue,
//                     title: 'Accessibility',
//                   ),
//                   _buildIconTile(
//                     icon: CupertinoIcons.camera_fill,
//                     color: CupertinoColors.systemGrey,
//                     title: 'Camera',
//                   ),
//                   _buildImageTile(
//                     imagePath: 'assets/switch.png',
//                     color: CupertinoColors.systemGrey,
//                     title: 'Control Center',
//                   ),
//                   _buildIconTile(
//                     icon: CupertinoIcons.sun_max,
//                     color: CupertinoColors.activeBlue,
//                     title: 'Display & Brightness',
//                   ),
//                   _buildImageTile(
//                     imagePath: 'assets/apps.png',
//                     color: CupertinoColors.activeBlue,
//                     title: 'Home Screen & App Library',
//                   ),
//                 ],
//               ),
//             ]),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildIconTile({
//     required IconData icon,
//     required Color color,
//     required String title,
//   }) {
//     return CupertinoListTile(
//       leading: Container(
//         width: 28,
//         height: 28,
//         decoration: BoxDecoration(
//           color: color,
//           borderRadius: BorderRadius.circular(6),
//         ),
//         child: Icon(icon, color: CupertinoColors.white, size: 20),
//       ),
//       title: Text(title),
//       trailing:
//           const Icon(CupertinoIcons.forward, color: CupertinoColors.systemGrey),
//       onTap: () {},
//     );
//   }

//   Widget _buildTrailingTextTile({
//     required IconData icon,
//     required Color color,
//     required String title,
//     required String trailingText,
//   }) {
//     return CupertinoListTile(
//       leading: Container(
//         width: 28,
//         height: 28,
//         decoration: BoxDecoration(
//           color: color,
//           borderRadius: BorderRadius.circular(6),
//         ),
//         child: Icon(icon, color: CupertinoColors.white, size: 20),
//       ),
//       title: Text(title),
//       trailing: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text(trailingText,
//               style: const TextStyle(color: CupertinoColors.systemGrey)),
//           const SizedBox(width: 4),
//           const Icon(CupertinoIcons.forward, color: CupertinoColors.systemGrey),
//         ],
//       ),
//       onTap: () {},
//     );
//   }

//   Widget _buildSwitchTile({
//     required IconData icon,
//     required Color color,
//     required String title,
//     required bool value,
//     required void Function(bool) onChanged,
//   }) {
//     return CupertinoListTile(
//       leading: Container(
//         width: 28,
//         height: 28,
//         decoration: BoxDecoration(
//           color: color,
//           borderRadius: BorderRadius.circular(6),
//         ),
//         child: Icon(icon, color: CupertinoColors.white, size: 20),
//       ),
//       title: Text(title),
//       trailing: CupertinoSwitch(value: value, onChanged: onChanged),
//     );
//   }

//   Widget _buildImageTile({
//     required String imagePath,
//     required Color color,
//     required String title,
//   }) {
//     return CupertinoListTile(
//       leading: Container(
//         width: 28,
//         height: 28,
//         decoration: BoxDecoration(
//           color: color,
//           borderRadius: BorderRadius.circular(6),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(4.0),
//           child: Image.asset(imagePath, color: CupertinoColors.white),
//         ),
//       ),
//       title: Text(title),
//       trailing:
//           const Icon(CupertinoIcons.forward, color: CupertinoColors.systemGrey),
//       onTap: () {},
//     );
//   }
// }

import 'package:flutter/cupertino.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool airoplaneModeActivated = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Title
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // Search bar with transparent background

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: CupertinoSearchTextField(
                suffixIcon: Icon(CupertinoIcons.mic_fill,
                    color: CupertinoColors.systemGrey),
                suffixMode: OverlayVisibilityMode.always,
              ),
            ),

            // Apple Account section
            CupertinoListSection.insetGrouped(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          CupertinoColors.systemBackground.resolveFrom(context),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/profile.png',
                            width: 55,
                            height: 55,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Danny Rico',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                'Apple Account, iCloud, and more',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: CupertinoColors.systemGrey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Icon(CupertinoIcons.forward,
                            color: CupertinoColors.systemGrey),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // Section 1
            CupertinoListSection.insetGrouped(
              children: [
                _buildSwitchTile(
                  icon: CupertinoIcons.airplane,
                  color: CupertinoColors.activeOrange,
                  title: 'Airplane Mode',
                  value: airoplaneModeActivated,
                  onChanged: (val) {
                    setState(() => airoplaneModeActivated = val);
                  },
                ),
                _buildTrailingTextTile(
                  icon: CupertinoIcons.wifi,
                  color: CupertinoColors.activeBlue,
                  title: 'Wi-Fi',
                  trailingText: 'Network1234',
                ),
                _buildTrailingTextTile(
                  icon: CupertinoIcons.bluetooth,
                  color: CupertinoColors.activeBlue,
                  title: 'Bluetooth',
                  trailingText: 'On',
                ),
                _buildIconTile(
                  icon: CupertinoIcons.antenna_radiowaves_left_right,
                  color: CupertinoColors.activeGreen,
                  title: 'Cellular',
                ),
                _buildIconTile(
                  icon: CupertinoIcons.battery_full,
                  color: CupertinoColors.activeGreen,
                  title: 'Battery',
                ),
              ],
            ),

            // Section 2
            CupertinoListSection.insetGrouped(
              children: [
                _buildIconTile(
                  icon: CupertinoIcons.settings,
                  color: CupertinoColors.systemGrey,
                  title: 'General',
                ),
                _buildImageTile(
                  imagePath: 'assets/accessibility.png',
                  color: CupertinoColors.activeBlue,
                  title: 'Accessibility',
                ),
                _buildIconTile(
                  icon: CupertinoIcons.camera_fill,
                  color: CupertinoColors.systemGrey,
                  title: 'Camera',
                ),
                _buildImageTile(
                  imagePath: 'assets/switch.png',
                  color: CupertinoColors.systemGrey,
                  title: 'Control Center',
                ),
                _buildIconTile(
                  icon: CupertinoIcons.sun_max_fill,
                  color: CupertinoColors.activeBlue,
                  title: 'Display & Brightness',
                ),
                _buildImageTile(
                  imagePath: 'assets/apps.png',
                  color: CupertinoColors.activeBlue,
                  title: 'Home Screen & App Library',
                ),
              ],
            ),
            CupertinoListSection.insetGrouped(
              children: [
                _buildImageTile(
                  imagePath: 'assets/password.png',
                  color: CupertinoColors.systemGrey,
                  title: 'Passwords',
                ),
                _buildImageTile(
                  imagePath: 'assets/privacy.png',
                  color: CupertinoColors.activeBlue,
                  title: 'Privacy & Security',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconTile({
    required IconData icon,
    required Color color,
    required String title,
  }) {
    return CupertinoListTile(
      leading: Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Icon(icon, color: CupertinoColors.white, size: 20),
      ),
      title: Text(title),
      trailing:
          const Icon(CupertinoIcons.forward, color: CupertinoColors.systemGrey),
      onTap: () {},
    );
  }

  Widget _buildTrailingTextTile({
    required IconData icon,
    required Color color,
    required String title,
    required String trailingText,
  }) {
    return CupertinoListTile(
      leading: Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Icon(icon, color: CupertinoColors.white, size: 20),
      ),
      title: Text(title),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(trailingText,
              style: const TextStyle(color: CupertinoColors.systemGrey)),
          const SizedBox(width: 4),
          const Icon(CupertinoIcons.forward, color: CupertinoColors.systemGrey),
        ],
      ),
      onTap: () {},
    );
  }

  Widget _buildSwitchTile({
    required IconData icon,
    required Color color,
    required String title,
    required bool value,
    required void Function(bool) onChanged,
  }) {
    return CupertinoListTile(
      leading: Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Icon(icon, color: CupertinoColors.white, size: 20),
      ),
      title: Text(title),
      trailing: CupertinoSwitch(value: value, onChanged: onChanged),
    );
  }

  Widget _buildImageTile({
    required String imagePath,
    required Color color,
    required String title,
  }) {
    return CupertinoListTile(
      leading: Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Image.asset(imagePath, color: CupertinoColors.white),
        ),
      ),
      title: Text(title),
      trailing:
          const Icon(CupertinoIcons.forward, color: CupertinoColors.systemGrey),
      onTap: () {},
    );
  }
}
