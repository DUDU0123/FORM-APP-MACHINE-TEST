import 'package:form_app_machine_task/core/enums/enums.dart';
import 'package:form_app_machine_task/model/models/form_steps_model.dart';
import 'package:form_app_machine_task/view/form_home/widgets/campaign_form_widget.dart';

List<FormStepsModel> formDataList = const [
  FormStepsModel(
    title: "Create New Campaign",
    label: "Fill out these details and get your campaign ready",
    status: FormStatus.pending,
    formWidget: CampaignFormWidget(),
  ),
  FormStepsModel(
    title: "Create Segments",
    label: "Get full control over your audience",
    status: FormStatus.pending,
    // formWidget: CampaignFormWidget(),
    formWidget: CampaignFormWidget(),
  ),
  FormStepsModel(
    title: "Bidding strategy",
    label: "Optimize your campaign reach with adsense",
    status: FormStatus.pending,
    formWidget: CampaignFormWidget(),
  ),
  FormStepsModel(
    title: "Site Links",
    label: "Setup your customer journey flow",
    status: FormStatus.pending,
    formWidget: CampaignFormWidget(),
  ),
  FormStepsModel(
    title: "Review Campaign",
    label: "Double check your campaign is ready to go!",
    status: FormStatus.pending,
    formWidget: CampaignFormWidget(),
  ),
];
