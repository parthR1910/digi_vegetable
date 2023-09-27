import 'package:digi_vegetable/ui/profile/helper/profile_appbar.dart';

import '../utils/theme/theme.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 2.h,),
            const ProfileAppbar(),
             Expanded(
                child: Column(
              children: [
                    Container()
              ],
            )),
          ],
        ),
      ),
    );
  }
}
