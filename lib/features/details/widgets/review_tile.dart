import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class ReviewTile extends StatelessWidget {
  const ReviewTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
              padding: const EdgeInsets.only(left: 18),
            child: Text("Review",style: TextStyles.font16Black.copyWith(fontWeight: FontWeight.w600),),
        ),
      
      Spacer(),
    IgnorePointer(
      ignoring: true,
      child: RatingBar.builder(
         initialRating: 5,
         minRating: 1,
         itemSize: 24,
         direction: Axis.horizontal,
         allowHalfRating: true,
         itemCount: 5,
         itemBuilder: (context, _) => Icon(
           Icons.star,
           color: Colors.amber,
         ),
         onRatingUpdate: (rating) {
    
         },
      ),
    ),
    IconButton(onPressed: (){
    
      }, icon: Icon(Icons.arrow_forward_ios,
      size:17,),
      
      ),
      ],
    );
  }
}
