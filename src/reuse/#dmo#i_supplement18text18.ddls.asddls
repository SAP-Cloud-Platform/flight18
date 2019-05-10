@AbapCatalog.sqlViewName: '/DMO/ISUPPTXT18'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Supplement Text view'

define view /DMO/I_Supplement18Text18
  as select from /dmo/suppl_te_18        as SupplementText
{
    key SupplementText.supplement_id    as SupplementID,

    @Semantics.language: true
    key SupplementText.language_code    as LanguageCode,

    @Semantics.text: true
    SupplementText.description          as Description

}
