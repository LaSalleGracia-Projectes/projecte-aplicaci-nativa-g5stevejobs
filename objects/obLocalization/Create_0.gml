global.currentLanguage = 0;

var _langsJsonStr = load_json_file_to_string("localization/availableLanguages.json");
availableLangsStruct = json_parse(_langsJsonStr);

localizedStrings = {};
set_language(global.currentLanguage);