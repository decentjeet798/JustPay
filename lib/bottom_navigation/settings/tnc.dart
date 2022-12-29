import 'package:animation_wrappers/Animations/faded_slide_animation.dart';
import 'package:flutter/material.dart';
import 'package:payes/generated/l10n.dart';

class Tnc extends StatelessWidget {
  const Tnc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FadedSlideAnimation(
        ListView(
          padding: EdgeInsets.symmetric(horizontal: 18),
          children: [
            SizedBox(
              height: 28,
            ),
            Text(
              S.of(context).terms_n_conditions,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              S.of(context).company_policies,
              style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 15),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque pulvinar, mi sit amet blandit maximus, metus turpis sollicitudin odio, in consectetur leo ante id massa.\n\nDonec aliquet accumsan est, ut aliquam nunc egestas volutpat. Donec non ultricies velit. Ut nec metus tortor. Nullam eget lectus sit amet turpis placerat consequat. Curabitur id eros leo. Proin et sagittis ante. Sed pulvinar eget arcu interdum elementum. Vestibulum nec tincidunt risus, sed sagittis nulla. Nunc tempus dui eget nisl semper, quis gravida sapien tincidunt.\n\n'),
            Text(
              S.of(context).terms_of_use,
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(fontWeight: FontWeight.w500, fontSize: 15),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
                'Maecenas vitae ante vitae leo rutrum posuere vel dignissim enim. Integer lobortis mi ex, vitae tempus nisi dapibus ut. Sed nec ipsum ac ante viverra vestibulum et quis leo. Phasellus non quam hendrerit, accumsan justo id, tristique arcu. Cras condimentum vestibulum est quis placerat.\n\nPhasellus blandit imperdiet ullamcorper. Phasellus nunc mi, fringilla ac ligula quis, interdum laoreet ligula. Nullam fringilla orci velit, non posuere enim imperdiet id. Mauris ac mauris quis lectus facilisis tincidunt. Suspendisse consectetur finibus felis iaculis iaculis. Aenean a commodo purus. Cras eget feugiat ipsum. Aliquam erat volutpat.')
          ],
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}
