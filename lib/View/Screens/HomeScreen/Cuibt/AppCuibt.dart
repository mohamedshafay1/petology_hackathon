import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:petology/Constant/EndPoint.dart';
import 'package:petology/Constant/Constant.dart';
import 'package:petology/Controller/DioHelper.dart';
import 'package:petology/Model/Pets/SentFiltersModel.dart';
import 'package:petology/Model/Static/HomaPage/FirstSectionModel.dart';
import 'package:petology/Model/Static/HomaPage/InfoModel.dart';
import 'package:petology/model/Static/HowToFeedModel.dart';


import 'AppStates.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of<AppCubit>(context);
  int? selectedItem;

  void changeSelectItem(index) {
    selectedItem = index;
    emit(SelectItem());
  }

  bool isHover = false;

  void changeHoverState(value) {
    isHover = value;
    emit(ChangeHover());
  }

  File? helpImage;
  var picker = ImagePicker();

  Future<void> getHelpImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      helpImage = File(pickedFile.path);
      emit(SocialCoverImagePickedSuccessState());
    } else {
      print('no');
      emit(SocialCoverImagePickedErrorState());
    }
  }

  InfoModel? infoModel;

  void getInfoData() {
    emit(InfoLoadingState());
    DioHelper.getData(url: infoUrl, token: token).then((value) {
      print(value.data);
      print('sjskasjdalsdkflsdfksdfasasasdasdasdasdasdasdsd${value.data}');

      infoModel = InfoModel.fromJson(value.data);

      emit(InfoSuccessState());
    }).catchError((error) {
      emit(InfoErrorState());
    });
  }
  // pets need
  // PetNeedsModel? petNeedsModel;
  //
  // void getPetNeed() {
  //   emit(PetNeedLoadingState());
  //   DioHelper.getData(url: petNeedUrl, token: token).then((value) {
  //     print(value.data);
  //     print('sjskasjdalsdkflsdfksdfasasasdasdasdasdasdasdsd${value.data}');
  //
  //     petNeedsModel = PetNeedsModel.fromJson(value.data);
  //     print('petNeedsModel${petNeedsModel!.petNeeds[0].imageUrl}');
  //
  //     emit(PetNeedSuccessState());
  //   }).catchError((error) {
  //     emit(PetNeedErrorState());
  //   });
  // }
  FirstSectionModel? firstSectionModel;

  void getFirstSectionData() {
    emit(FirstSectionLoadingState());
    DioHelper.getData(url: petFirstSection, token: token).then((value) {
      print(value.data);
      print('sjskasjdalsdkflsdfksdfasasasdasdasdasdasdasdsd${value.data}');

      firstSectionModel = FirstSectionModel.fromJson(value.data);

      emit(FirstSectionSuccessState());
    }).catchError((error) {
      emit(FirstSectionErrorState());
    });
  }
// How-To-FeedModel? howToFeedModel;
  HowToFeedModel? howToFeedModel;

  void getHowToFeedData({int index = 1}) {
    emit(HowToFeedLoadingState());
    DioHelper.getData(url: '$howToFeed/$index', token: token).then((value) {
      print(value.data);
      print('sjskasjdalsdkflsdfksdfasasasdasdasdasdasdasdsd${value.data}');

      howToFeedModel = HowToFeedModel.fromJson(value.data);

      emit(HowToFeedSuccessState());
    }).catchError((error) {
      emit(HowToFeedErrorState());
    });
  }

  SendFilterModel? sendFilterModel;

  void getFilterData({int index = 1}) {
    emit(HowToFeedLoadingState());
    DioHelper.getData(url: '$sendFilter/$index', token: token).then((value) {
      print(value.data);
      print('sjskasjdalsdkflsdfksdfasasasdasdasdasdasdasdsd${value.data}');

      sendFilterModel = SendFilterModel.fromJson(value.data);

      emit(HowToFeedSuccessState());
    }).catchError((error) {
      emit(HowToFeedErrorState());
    });
  }




}