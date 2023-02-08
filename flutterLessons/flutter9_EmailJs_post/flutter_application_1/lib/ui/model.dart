class EmailModel {
  String? serviceId;
  String? templateId;
  String? userId;
  String? token;
  TemplateParams? params;
}

class TemplateParams {
  String? fromName;
  String? toName;
  String? message;
  String? replyTo;
}
