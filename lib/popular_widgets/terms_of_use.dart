import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'package:testing/popular_widgets/drawer.dart';
import 'package:testing/popular_widgets/appbar_dropdown_button.dart';
import 'package:testing/popular_widgets/footer.dart';
import 'package:testing/popular_widgets/appbar_top_buttons.dart';
import 'package:testing/popular_widgets/appbar_custom.dart';
import 'package:testing/profile/profile_pics_icons.dart';
import 'package:testing/profile/profile_tabbar.dart';

class terms_of_use extends StatefulWidget {
  @override
  terms_of_useState createState() => terms_of_useState();
}

class terms_of_useState extends State<terms_of_use> {
  final currentScreen = terms_of_use;
  RefreshController _refreshController = RefreshController(initialRefresh: false);

  List<String> items = [
    "blep",
  ];

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    items.add((items.length + 1).toString());
    if (mounted) setState(() {});
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    Color myColor = Theme.of(context).accentColor;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: appbar_custom(),
      ),
      drawer: drawer(currentScreen),
      body: SmartRefresher(
        enablePullDown: true,
        header: WaterDropMaterialHeader(backgroundColor: theme.splashColor, color: theme.primaryColor),
        footer: CustomFooter(
          builder: (BuildContext context, LoadStatus mode) {},
        ),
        controller: _refreshController,
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            Container(color: theme.splashColor, height: 4),
            profile_top_buttons(),
            Container(color: theme.splashColor, height: 4),
            Column(
              children: <Widget>[
                Text(
                  'Acceptable Use Policy',
                  style: TextStyle(
                    color: theme.primaryColor,
                    fontSize: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                  child: Text(
                    'This acceptable use policy (“Policy”) sets forth the general guidelines and acceptable and prohibited uses of the “Alterum” mobile application (“Mobile Application” or “Service”) and any of its related products and services (collectively, “Services”). This Policy is a legally binding agreement between you (“User”, “you” or “your”) and this Mobile Application developer (“Operator”, “we”, “us” or “our”). If you are entering into this agreement on behalf of a business or other legal entity, you represent that you have the authority to bind such entity to this agreement, in which case the terms “User”, “you” or “your” shall refer to such entity. If you do not have such authority, or if you do not agree with the terms of this agreement, you must not accept this agreement and may not access and use the Mobile Application and Services. By accessing and using the Mobile Application and Services, you acknowledge that you have read, understood, and agree to be bound by the terms of this Agreement. You acknowledge that this Agreement is a contract between you and the Operator, even though it is electronic and is not physically signed by you, and it governs your use of the Mobile Application and Services.',
                    style: TextStyle(
                      color: theme.primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),
                Text(
                  'Prohibited Activities and Uses',
                  style: TextStyle(
                    color: theme.primaryColor,
                    fontSize: 25,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                  child: Text(
                    'You may not use the Mobile Application and Services to publish content or engage in activity that is illegal under applicable law, that is harmful to others, or that would subject us to liability, including, without limitation, in connection with any of the following, each of which is prohibited under this Policy:',
                    style: TextStyle(
                      color: theme.primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                  child: Text(
                    'General Guidlines: \n \n'
                    '001; You must be 13 years old to use this app and 18 or older to access Mature content.  \n \n'
                    '002; No harrassment or bullying is allowed among roleplayers. Should you or someone you know are faced with harrassment of any form, contact a moderator immediately \n \n'
                    '003; At the bottom of every page, there is a contact support button if help is ever needed. \n \n'
                    '004; if you dont get it by now then you never will sorry not sorry \n \n',
                    style: TextStyle(
                      color: theme.primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),
                Text(
                  'Terms and Conditions',
                  style: TextStyle(
                    color: theme.primaryColor,
                    fontSize: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                  child: Text(
                    'These terms and conditions (“Agreement”) set forth the general terms and conditions of your use of the “Alterum” mobile application (“Mobile Application” or “Service”) and any of its related products and services (collectively, “Services”). This Agreement is legally binding between you (“User”, “you” or “your”) and this Mobile Application developer (“Operator”, “we”, “us” or “our”). If you are entering into this agreement on behalf of a business or other legal entity, you represent that you have the authority to bind such entity to this agreement, in which case the terms “User”, “you” or “your” shall refer to such entity. If you do not have such authority, or if you do not agree with the terms of this agreement, you must not accept this agreement and may not access and use the Mobile Application and Services. By accessing and using the Mobile Application and Services, you acknowledge that you have read, understood, and agree to be bound by the terms of this Agreement. You acknowledge that this Agreement is a contract between you and the Operator, even though it is electronic and is not physically signed by you, and it governs your use of the Mobile Application and Services.',
                    style: TextStyle(
                      color: theme.primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),
                Text(
                  'Accounts and Membership',
                  style: TextStyle(
                    color: theme.primaryColor,
                    fontSize: 25,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                  child: Text(
                    'You must be at least 13 years of age to use the Mobile Application and Services. By using the Mobile Application and Services and by agreeing to this Agreement you warrant and represent that you are at least 13 years of age. If you create an account in the Mobile Application, you are responsible for maintaining the security of your account and you are fully responsible for all activities that occur under the account and any other actions taken in connection with it. We may monitor and review new accounts before you may sign in and start using the Services. Providing false contact information of any kind may result in the termination of your account. You must immediately notify us of any unauthorized uses of your account or any other breaches of security. We will not be liable for any acts or omissions by you, including any damages of any kind incurred as a result of such acts or omissions. We may suspend, disable, or delete your account (or any part thereof) if we determine that you have violated any provision of this Agreement or that your conduct or content would tend to damage our reputation and goodwill. If we delete your account for the foregoing reasons, you may not re-register for our Services. We may block your email address and Internet protocol address to prevent further registration.',
                    style: TextStyle(
                      color: theme.primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),
                Text(
                  'User Content',
                  style: TextStyle(
                    color: theme.primaryColor,
                    fontSize: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                  child: Text(
                    'We do not own any data, information or material (collectively, “Content”) that you submit in the Mobile Application in the course of using the Service. You shall have sole responsibility for the accuracy, quality, integrity, legality, reliability, appropriateness, and intellectual property ownership or right to use of all submitted Content. We may monitor and review the Content in the Mobile Application submitted or created using our Services by you. You grant us permission to access, copy, distribute, store, transmit, reformat, display and perform the Content of your user account solely as required for the purpose of providing the Services to you. Without limiting any of those representations or warranties, we have the right, though not the obligation, to, in our own sole discretion, refuse or remove any Content that, in our reasonable opinion, violates any of our policies or is in any way harmful or objectionable. You also grant us the license to use, reproduce, adapt, modify, publish or distribute the Content created by you or stored in your user account for commercial, marketing or any similar purpose.',
                    style: TextStyle(
                      color: theme.primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),
                Text(
                  'Adult content',
                  style: TextStyle(
                    color: theme.primaryColor,
                    fontSize: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                  child: Text(
                    'Please be aware that there may be certain adult or mature content available in the Mobile Application. A warning will be shown to the User prior to adult content being displayed. Where there is mature or adult content, individuals who are less than 18 years of age or are not permitted to access such content under the laws of any applicable jurisdiction may not access such content. If we learn that anyone under the age of 18 seeks to conduct a transaction through the Services, we will require verified parental consent, in accordance with the Children’s Online Privacy Protection Act of 1998 (“COPPA”). Certain areas of the Mobile Application and Services may not be available to children under 18 under any circumstances.',
                    style: TextStyle(
                      color: theme.primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),
                Text(
                  'Backups',
                  style: TextStyle(
                    color: theme.primaryColor,
                    fontSize: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                  child: Text(
                    'We are not responsible for the Content residing in the Mobile Application. In no event shall we be held liable for any loss of any Content. It is your sole responsibility to maintain appropriate backup of your Content. Notwithstanding the foregoing, on some occasions and in certain circumstances, with absolutely no obligation, we may be able to restore some or all of your data that has been deleted as of a certain date and time when we may have backed up data for our own purposes. We make no guarantee that the data you need will be available.',
                    style: TextStyle(
                      color: theme.primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),
                Text(
                  'Links to Other Resources',
                  style: TextStyle(
                    color: theme.primaryColor,
                    fontSize: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                  child: Text(
                    'Although the Mobile Application and Services may link to other resources (such as websites, mobile applications, etc.), we are not, directly or indirectly, implying any approval, association, sponsorship, endorsement, or affiliation with any linked resource, unless specifically stated herein. We are not responsible for examining or evaluating, and we do not warrant the offerings of, any businesses or individuals or the content of their resources. We do not assume any responsibility or liability for the actions, products, services, and content of any other third parties. You should carefully review the legal statements and other conditions of use of any resource which you access through a link in the Mobile Application. Your linking to any other off-site resources is at your own risk.',
                    style: TextStyle(
                      color: theme.primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),
                Text(
                  'Prohibited Uses ',
                  style: TextStyle(
                    color: theme.primaryColor,
                    fontSize: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                  child: Text(
                    'In addition to other terms as set forth in the Agreement, you are prohibited from using the Mobile Application and Services or Content: (a) for any unlawful purpose; (b) to solicit others to perform or participate in any unlawful acts; (c) to violate any international, federal, provincial or state regulations, rules, laws, or local ordinances; (d) to infringe upon or violate our intellectual property rights or the intellectual property rights of others; (e) to harass, abuse, insult, harm, defame, slander, disparage, intimidate, or discriminate based on gender, sexual orientation, religion, ethnicity, race, age, national origin, or disability; (f) to submit false or misleading information; (g) to upload or transmit viruses or any other type of malicious code that will or may be used in any way that will affect the functionality or operation of the Mobile Application and Services, third party products and services, or the Internet; (h) to spam, phish, pharm, pretext, spider, crawl, or scrape; (i) for any obscene or immoral purpose; or (j) to interfere with or circumvent the security features of the Mobile Application and Services, third party products and services, or the Internet. We reserve the right to terminate your use of the Mobile Application and Services for violating any of the prohibited uses.',
                    style: TextStyle(
                      color: theme.primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),
                Text(
                  'Intellectual Property Rights',
                  style: TextStyle(
                    color: theme.primaryColor,
                    fontSize: 25,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                  child: Text(
                    '“Intellectual Property Rights” means all present and future rights conferred by statute, common law or equity in or in relation to any copyright and related rights, trademarks, designs, patents, inventions, goodwill and the right to sue for passing off, rights to inventions, rights to use, and all other intellectual property rights, in each case whether registered or unregistered and including all applications and rights to apply for and be granted, rights to claim priority from, such rights and all similar or equivalent rights or forms of protection and any other results of intellectual activity which subsist or will subsist now or in the future in any part of the world. This Agreement does not transfer to you any intellectual property owned by the Operator or third parties, and all rights, titles, and interests in and to such property will remain (as between the parties) solely with the Operator. All trademarks, service marks, graphics and logos used in connection with the Mobile Application and Services, are trademarks or registered trademarks of the Operator or its licensors. Other trademarks, service marks, graphics and logos used in connection with the Mobile Application and Services may be the trademarks of other third parties. Your use of the Mobile Application and Services grants you no right or license to reproduce or otherwise use any of the Operator or third party trademarks.',
                    style: TextStyle(
                      color: theme.primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),
                Text(
                  'Limitation of Liability',
                  style: TextStyle(
                    color: theme.primaryColor,
                    fontSize: 25,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                  child: Text(
                    'To the fullest extent permitted by applicable law, in no event will the Operator, its affiliates, directors, officers, employees, agents, suppliers or licensors be liable to any person for any indirect, incidental, special, punitive, cover or consequential damages (including, without limitation, damages for lost profits, revenue, sales, goodwill, use of content, impact on business, business interruption, loss of anticipated savings, loss of business opportunity) however caused, under any theory of liability, including, without limitation, contract, tort, warranty, breach of statutory duty, negligence or otherwise, even if the liable party has been advised as to the possibility of such damages or could have foreseen such damages. To the maximum extent permitted by applicable law, the aggregate liability of the Operator and its affiliates, officers, employees, agents, suppliers and licensors relating to the services will be limited to an amount no greater than one dollar or any amounts actually paid in cash by you to the Operator for the prior one month period prior to the first event or occurrence giving rise to such liability. The limitations and exclusions also apply if this remedy does not fully compensate you for any losses or fails of its essential purpose.',
                    style: TextStyle(
                      color: theme.primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),
                Text(
                  'Indemnification',
                  style: TextStyle(
                    color: theme.primaryColor,
                    fontSize: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                  child: Text(
                    'You agree to indemnify and hold the Operator and its affiliates, directors, officers, employees, agents, suppliers and licensors harmless from and against any liabilities, losses, damages or costs, including reasonable attorneys’ fees, incurred in connection with or arising from any third party allegations, claims, actions, disputes, or demands asserted against any of them as a result of or relating to your Content, your use of the Mobile Application and Services or any willful misconduct on your part.',
                    style: TextStyle(
                      color: theme.primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),
                Text(
                  'Severability',
                  style: TextStyle(
                    color: theme.primaryColor,
                    fontSize: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                  child: Text(
                    'All rights and restrictions contained in this Agreement may be exercised and shall be applicable and binding only to the extent that they do not violate any applicable laws and are intended to be limited to the extent necessary so that they will not render this Agreement illegal, invalid or unenforceable. If any provision or portion of any provision of this Agreement shall be held to be illegal, invalid or unenforceable by a court of competent jurisdiction, it is the intention of the parties that the remaining provisions or portions thereof shall constitute their agreement with respect to the subject matter hereof, and all such remaining provisions or portions thereof shall remain in full force and effect.',
                    style: TextStyle(
                      color: theme.primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),
                Text(
                  'Dispute Resolution',
                  style: TextStyle(
                    color: theme.primaryColor,
                    fontSize: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                  child: Text(
                    'The formation, interpretation, and performance of this Agreement and any disputes arising out of it shall be governed by the substantive and procedural laws of Texas, United States without regard to its rules on conflicts or choice of law and, to the extent applicable, the laws of United States. The exclusive jurisdiction and venue for actions related to the subject matter hereof shall be the courts located in Texas, United States, and you hereby submit to the personal jurisdiction of such courts. You hereby waive any right to a jury trial in any proceeding arising out of or related to this Agreement. The United Nations Convention on Contracts for the International Sale of Goods does not apply to this Agreement.',
                    style: TextStyle(
                      color: theme.primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),
                Text(
                  'Changes and Amendments',
                  style: TextStyle(
                    color: theme.primaryColor,
                    fontSize: 25,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                  child: Text(
                    'We reserve the right to modify this Agreement or its terms related to the Mobile Application and Services at any time at our discretion. When we do, we will revise the updated date at the bottom of this page, post a notification in the Mobile Application, send you an email to notify you. We may also provide notice to you in other ways at our discretion, such as through the contact information you have provided. \n \n'
                    'An updated version of this Agreement will be effective immediately upon the posting of the revised Agreement unless otherwise specified. Your continued use of the Mobile Application and Services after the effective date of the revised Agreement (or such other act specified at that time) will constitute your consent to those changes.',
                    style: TextStyle(
                      color: theme.primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),
                Text(
                  'Acceptance of These Terms',
                  style: TextStyle(
                    color: theme.primaryColor,
                    fontSize: 25,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                  child: Text(
                    'You acknowledge that you have read this Agreement and agree to all its terms and conditions. By accessing and using the Mobile Application and Services you agree to be bound by this Agreement. If you do not agree to abide by the terms of this Agreement, you are not authorized to access or use the Mobile Application and Services.',
                    style: TextStyle(
                      color: theme.primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),
                Text(
                  'Contacting Us',
                  style: TextStyle(
                    color: theme.primaryColor,
                    fontSize: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                  child: Text(
                    'If you have any questions, concerns, or complaints regarding this Agreement, we encourage you to contact us using the details below:',
                    style: TextStyle(
                      color: theme.primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                  child: Text(
                    'support@necrofrog.com',
                    style: TextStyle(
                      color: theme.primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                  child: Text(
                    'or',
                    style: TextStyle(
                      color: theme.primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                  child: Text(
                    'Contact support button here',
                    style: TextStyle(
                      color: theme.primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                  child: Text(
                    'This document was last updated on January 14, 2022',
                    style: TextStyle(
                      color: theme.primaryColor,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            Container(color: theme.splashColor, height: 4),
            footer(),
          ],
        ),
      ),
    );
  }
}

/*class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  }
  }*/
