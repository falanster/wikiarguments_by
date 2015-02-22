<?php
/********************************************************************************
 * The contents of this file are subject to the Common Public Attribution License
 * Version 1.0 (the "License"); you may not use this file except in compliance
 * with the License. You may obtain a copy of the License at
 * http://www.wikiarguments.net/license/. The License is based on the Mozilla
 * Public License Version 1.1 but Sections 14 and 15 have been added to cover
 * use of software over a computer network and provide for limited attribution
 * for the Original Developer. In addition, Exhibit A has been modified to be
 * consistent with Exhibit B.
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License for
 * the specific language governing rights and limitations under the License.
 *
 * The Original Code is Wikiarguments. The Original Developer is the Initial
 * Developer and is Wikiarguments GbR. All portions of the code written by
 * Wikiarguments GbR are Copyright (c) 2012. All Rights Reserved.
 * Contributor(s):
 *     Andreas Wierz (andreas.wierz@gmail.com).
 *
 * Attribution Information
 * Attribution Phrase (not exceeding 10 words): Powered by Wikiarguments
 * Attribution URL: http://www.wikiarguments.net
 *
 * This display should be, at a minimum, the Attribution Phrase displayed in the
 * footer of the page and linked to the Attribution URL. The link to the Attribution
 * URL must not contain any form of 'nofollow' attribute.
 *
 * Display of Attribution Information is required in Larger Works which are
 * defined in the CPAL as a work which combines Covered Code or portions
 * thereof with code not governed by the terms of the CPAL.
 *******************************************************************************/

global $sTemplate, $sUser, $sDB, $sPacket, $sPage;

$page       = "";
$language   = $sTemplate->getLangBase();
?>
<?php include($sTemplate->getTemplateRootAbs()."header.php"); ?>

<div id = "content_wide">
  <div class = "thin">

<div class = "headline"><?php echo $sTemplate->getString("HTML_META_TITLE_ABOUT"); ?></div>
<?php echo $sTemplate->getString("ABOUT_US"); ?>
</br>
<div>
<ul>Асноўная інфармацыя, якую трэба ведаць, каб далучыцца да платформы “Інструмент удзелу”:
	<li> <h3>Як карыстацца сістэмай </h3>
	<p>Падрабязны скрынкаст, як зарэгістравацца на платформе, галасаваць за прапановы, дадаваць свае прапановы на галасаванне і іншае. </p></li>
	<li> <h3>Што абмяркоўваем </h3>
	<p>Старонка са сціслым апісаннем законапраекта “Аб грамадска карыснай дзейнасці”, які абмяркоўваецца на дадзенай платформе. Падрабязная інфармацыя пра дзейную версію законапраекта, агульная стратэгія распрацоўкі і прасоўвання законапраекта на дзяржаўны ўзровень. </p></li>
	<li> <h3>Правілы і ліцэнзіі </h3>
	<p>Агульныя правілы, якіх трэба прытрымлівацца, калі вы працуеце з “Інструментам удзелу”, і ліцэнзія, пад якой распаўсюджваецца платформа.</p></li>
	<li> <h3>Ахвяраваць праекту</h3>
	<p>Падтрымаць развіццё “Інструменту удзелу” вы можаце дабрачынным ахвяраваннем. </p></li>
</ul>
</div>

<div>
Пажаданні, прапановы ці заўвагі пішыце ў форму адваротнай сувязі.
</div>

<div class="main-logo">
	<div class="logo-about-us falanster">
		<a target="_blank" href="http://falanster.by/be/eparticipation-tool">
			<img src="<?php echo $sTemplate->getTemplateRoot(); ?>img/falanster_sitelogo_by.png" alt="" width="335" height="49">
		</a>
	</div>
	<div class="logo-about-us akt">
		<a target="_blank" href="http://actngo.info/article/obsuzhdaem-proekt-zakona-ob-obshchestvenno-poleznoy-deyatelnosti">
			<img src="<?php echo $sTemplate->getTemplateRoot(); ?>img/logo-ACT-mini.jpg" alt="" width="250" height="141">
		</a>
	</div>
</div>

<h2>Партнёры </h2>
<div class="partners">
	<div class="logo-partner">
		<img src="<?php echo $sTemplate->getTemplateRoot(); ?>img/partner_1.png" alt="" width="150" height="150">
	</div>
	<div class="logo-partner">
		<img src="<?php echo $sTemplate->getTemplateRoot(); ?>img/partner_2.png" alt="" width="150" height="150">
	</div>
	<div class="logo-partner">
		<img src="<?php echo $sTemplate->getTemplateRoot(); ?>img/partner_3.png" alt="" width="150" height="150">
	</div>
	<div class="logo-partner">
		<img src="<?php echo $sTemplate->getTemplateRoot(); ?>img/partner_4.png" alt="" width="150" height="150">
	</div>
</div>

<h2>Удзельнічай! </h2>

	<div id = "big_orange_button">
		<?php if(!$sUser->isLoggedIn()) { ?>
	<a href = '<?php echo $sTemplate->getRoot(); ?>new-question/' onclick = "wikiargument.raiseError('<?php echo $sTemplate->getString("ERROR_NOT_LOGGED_IN") ?>'); return false;">
		<button class = 'button_orange first button_new_question'><?php echo $sTemplate->getString("NEW_QUESTION"); ?></button>
	</a>
	<?php }else if($sPage->group() && $sPage->group()->getPermission($sUser, ACTION_NEW_QUESTION) == PERMISSION_DISALLOWED) { ?>
	<a href = '<?php echo $sTemplate->getRoot(); ?>new-question/' onclick = "wikiargument.raiseError('<?php echo $sTemplate->getString("NOTICE_NEW_QUESTION_NO_PERMISSION") ?>'); return false;">
		<button class = 'button_orange first button_new_question'><?php echo $sTemplate->getString("NEW_QUESTION"); ?></button>
	</a>
	<?php }else if($sPage->group()) { ?>
	<a href = '<?php echo $sTemplate->getRoot(); ?>groups/<?php echo $sPage->group()->url(); ?>/new-question/'>
		<div class = 'button_orange first button_new_question'><?php echo $sTemplate->getString("NEW_QUESTION"); ?></div>
	</a>
	<?php }else { ?>
	<a href = '<?php echo $sTemplate->getRoot(); ?>new-question/'>
		<div class = 'button_orange first button_new_question'><?php echo $sTemplate->getString("NEW_QUESTION"); ?></div>
	</a>
	<?php } ?>
	</div>

	</div>
</div>

<?php include($sTemplate->getTemplateRootAbs()."footer.php"); ?>
