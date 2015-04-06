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

		<div class = "headline"><?php echo $sTemplate->getString("HTML_META_TITLE_DISCUSSION"); ?></div>

<div>

<p>На гэтай платформе абмяркоўваецца законапраект “Аб грамадска карыснай дзейнасці”. </p>

<p>Сёння раз'яднанасць прававых актаў і прабелы ў заканадаўстве ў пэўнай ступені перашкаджаюць развіццю дабрачыннай дзейнасці, спонсарства, бо дазваляюць некамерцыйным арганізацыям, іншым юрыдычным асобам, а таксама грамадзянам стаць паўнапраўнымі партнёрамі дзяржавы ў выкананні яе сацыяльных функцый.</p>

<p>Рэалізацыя законапраекта будзе садзейнічаць павелічэнню ролі дабрачынных арганізацый у грамадскім жыцці, стымуляванню і павышэнню эфектыўнасці іх грамадска карыснай дзейнасці, устанаўленню празрыстасці і справаздачнасці іх грамадству.</p>
</div>
</br>

	<div id = "big_orange_button">
		<a href = "https://github.com/falanster/charity-docs/blob/master/30.12.2014/Proekt-Zakona-OPD-30-12-2014.docx?raw=true">
			<button class = 'big_button_orange'>спампаваць законапраект</button>
		</a>
	</div>

<div>
</br>
<h3>План стварэння </h3>
<p><a href="<?php echo $sTemplate->getRoot(); ?>tpl/charity/img/plan/time_line_1.png" target="_blank"><img src="<?php echo $sTemplate->getRoot(); ?>tpl/charity/img/plan/time_line_1.png" style="min-width: 760px; width: 100%"></a></p>
<p>Этап распрацоўкі законапраекта адбываецца з дапамогай платформы “Інструмент удзелу”. Кожны чалавек можа <a href = '<?php echo $sTemplate->getRoot(); ?>signup/'>зарэгістравацца </a> на сайце, удзельнічаць у існых абмеркаваннях і галасаваннях, дадаваць свае прапановы, аргументы і контр-аргументы. Падрабязней пра працу платформы глядзіце на старонцы <a href = '<?php echo $sTemplate->getRoot(); ?>usage-manual/'>“Як карыстацца”</a>, а  пра правілы паводзінаў на сайце - на старонцы <a href = '<?php echo $sTemplate->getRoot(); ?>license/'>“Правілы і ліцэнзія”</a>. </p>
</div>
</br>
<div>
<h3>Усе версіі законапраекта:</h3>
<p>
<ul>
<li><a href="https://github.com/falanster/charity-docs/blob/master/30.12.2014/Proekt-Zakona-OPD-30-12-2014.docx?raw=true">Версія ад 30.12.2014</a>(абмяркоўваем)</li>
<li><a href="https://github.com/falanster/charity-docs/blob/master/17.11.2014/%D0%9F%D1%80%D0%BE%D0%B5%D0%BA%D1%82-%D0%97%D0%B0%D0%BA%D0%BE%D0%BD%D0%B0-%D0%BE%D0%B1-%D0%9E%D0%9F%D0%94-17-11-2014.doc?raw=true">Версія ад 17.11.2014</a></li>
<li><a href="https://github.com/falanster/charity-docs/blob/master/20.10.2014/Proekt-Zakona-OPD-10-20-%D0%B1%D0%B5%D0%B7-%D0%BA%D0%BE%D0%BC%D0%B5%D0%BD%D1%82%D0%BE%D0%B2.doc?raw=true">Версія ад 20.10.2014</a></li>
<li><a href="https://github.com/falanster/charity-docs/blob/master/10.10.2014/Proekt-Zakona-OPD-10-10-2014.doc?raw=true">Версія ад 10.10.2014</a></li>
<li><a href="https://github.com/falanster/charity-docs/blob/master/15.09.2014/%D0%9F%D1%80%D0%BE%D0%B5%D0%BA%D1%82-%D0%97%D0%B0%D0%BA%D0%BE%D0%BD%D0%B0-%D0%BE%D0%B1-%D0%9E%D0%9F%D0%94-09-15-%D0%BE%D1%80%D0%B8%D0%B3%D0%B8%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9-%D0%B2%D0%B0%D1%80%D0%B8%D0%B0%D0%BD%D1%82.doc?raw=true">Версія ад 15.09.2014</a></li>
</ul>
</p>
</div>
</br></br>

	<div id = "big_orange_button">
		<?php if(!$sUser->isLoggedIn()) { ?>
	<a href = '<?php echo $sTemplate->getRoot(); ?>new-question/' onclick = "wikiargument.raiseError('<?php echo $sTemplate->getString("ERROR_NOT_LOGGED_IN") ?>'); return false;">
		<button class = 'big_button_orange first big_button_new_question'><?php echo $sTemplate->getString("NEW_QUESTION"); ?></button>
	</a>
	<?php }else if($sPage->group() && $sPage->group()->getPermission($sUser, ACTION_NEW_QUESTION) == PERMISSION_DISALLOWED) { ?>
	<a href = '<?php echo $sTemplate->getRoot(); ?>new-question/' onclick = "wikiargument.raiseError('<?php echo $sTemplate->getString("NOTICE_NEW_QUESTION_NO_PERMISSION") ?>'); return false;">
		<button class = 'big_button_orange first big_button_new_question'><?php echo $sTemplate->getString("NEW_QUESTION"); ?></button>
	</a>
	<?php }else if($sPage->group()) { ?>
	<a href = '<?php echo $sTemplate->getRoot(); ?>groups/<?php echo $sPage->group()->url(); ?>/new-question/'>
		<div class = 'big_button_orange first big_button_new_question'><?php echo $sTemplate->getString("NEW_QUESTION"); ?></div>
	</a>
	<?php }else { ?>
	<a href = '<?php echo $sTemplate->getRoot(); ?>new-question/'>
		<div class = 'big_button_orange first big_button_new_question'><?php echo $sTemplate->getString("NEW_QUESTION"); ?></div>
	</a>
	<?php } ?>
	</div>

	</div>
</div>

<?php include($sTemplate->getTemplateRootAbs()."footer.php"); ?>
