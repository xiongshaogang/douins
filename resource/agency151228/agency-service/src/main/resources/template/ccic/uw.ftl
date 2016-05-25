<?xml version="1.0" encoding="GBK"?>
<root>
    <channel>
        <channelCode>310044</channelCode>
        <channelComCode>310044001</channelComCode>
        <channelAreaCode>NO</channelAreaCode>
        <channelTradeCode>${uw.channel.channelTradeCode}</channelTradeCode>
        <channelProductCode>${uw.channel.channelProductCode}</channelProductCode>
        <channelTradeDate>${uw.channel.channelTradeDate}</channelTradeDate>
        <channelTradeSerialNo>${uw.channel.channelTradeSerialNo}</channelTradeSerialNo>
        <sourceType>0</sourceType>
    </channel>
    <main>
        <riskCode>EID</riskCode>
        <planCode>EID</planCode>
        <formulaCode>${uw.channel.channelProductCode}</formulaCode>
        <businessType>${uw.uwMain.business}</businessType>
        <startDate>${uw.uwMain.startDate}</startDate>
        <startHour>${uw.uwMain.startHour}</startHour>
        <endDate>${uw.uwMain.endDate}</endDate>
        <endHour>${uw.uwMain.endHour}</endHour>
        <sumQuantity>${uw.uwMain.sumQuantity}</sumQuantity>
        <insuredCount></insuredCount>
        <sumAmount>${uw.uwMain.sumAmount}</sumAmount>
        <sumPremium>${uw.uwMain.sumPremium}</sumPremium>
        <payMode></payMode>
        <autoTransRenewFlag></autoTransRenewFlag>
        <payTimes></payTimes>
    </main>
    <itemKindList>
        <#if uw.itemKindList?exists>
        <#list uw.itemKindList as item>
        <itemKind>
        <clauseCode>${item.clauseCode}</clauseCode>
        <kindCode>${item.kindCode}</kindCode>
        <amount>${item.amount}</amount>
        <premium>${item.premium}</premium>
        <dayAmount>0</dayAmount>
        <subDay>0</subDay>
        </itemKind>
        </#list>
        </#if>
    </itemKindList>
    <applicant>
        <appliName>${uw.applicant.appliName}</appliName>
        <identifyType>${uw.applicant.identifyType}</identifyType>
        <identifyNumber>${uw.applicant.identifyNumber}</identifyNumber>
        <birthDay>${uw.applicant.birthDay}</birthDay>
        <insuredIdentity>99</insuredIdentity>
        <email>${uw.applicant.email}</email>
    </applicant>
    <insureds>
    <#if uw.insureds?exists>
    <#list uw.insureds as insured>
    <insured>
        <insuredName>${insured.insuredName}</insuredName>
        <identifyType>${insured.identifyType}</identifyType>
        <identifyNumber>${insured.identifyNumber}</identifyNumber>
        <birthDay>${insured.birthDay}</birthDay>
        <appliIdentity>99</appliIdentity>
    </insured>
    </#list>
    </#if>
    </insureds>
</root>