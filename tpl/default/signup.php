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

  <div class = "signup">
    <form id = "form_submit" action = "<?php echo $sTemplate->getRoot(); ?>signup/" method = "POST">
      <div class = "row">
        <div class = "headline"><?php echo $sTemplate->getString("SIGNUP_HEADLINE"); ?></div>
      </div>
      <div class = "row">
        <div class = "label"><?php echo $sTemplate->getString("SIGNUP_USERNAME"); ?></div>
        <div class = "input">
          <input type = "text" id = "signup_username" name = "signup_username" value = "<?php echo $sRequest->getStringPlain("signup_username"); ?>"></input>
        </div>
      </div>

      <div class = "row">
        <div class = "label"><?php echo $sTemplate->getString("SIGNUP_PASSWORD"); ?></div>
        <div class = "input">
          <input type = "password" id = "signup_password" name = "signup_password"></input>
        </div>
      </div>

      <div class = "row">
        <div class = "label"><?php echo $sTemplate->getString("SIGNUP_PASSWORD_REPEAT"); ?></div>
        <div class = "input">
          <input type = "password" id = "signup_password_2" name = "signup_password_2"></input>
        </div>
      </div>

      <div class = "row">
        <div class = "label"><?php echo $sTemplate->getString("SIGNUP_EMAIL"); ?></div>
        <div class = "input">
          <input type = "text" id = "signup_email" name = "signup_email" value = "<?php echo $sRequest->getStringPlain("signup_email"); ?>"></input>
        </div>
      </div>

      <div class = "row row_submit">
        <button class = "button_orange" onclick = "$('#form_submit').submit(); return false;"><?php echo $sTemplate->getString("SIGNUP_SUBMIT"); ?></button>
      </div>

      <input type = "hidden" name = "signup" value = "1" />
    </form>
  </div>

  <div class = "login">
    <form id = "form_login" action = "<?php echo $sTemplate->getRoot(); ?>signup/" method = "POST">
      <div class = "row">
        <div class = "headline"><?php echo $sTemplate->getString("LOGIN_HEADLINE"); ?></div>
      </div>
      <div class = "row" style = "margin-top: 35px;">
        <div class = "label"><?php echo $sTemplate->getString("LOGIN_USERNAME"); ?></div>
        <div class = "input">
          <input type = "text" id = "login_username" name = "login_username"></input>
        </div>
      </div>

      <div class = "row">
        <div class = "label"><?php echo $sTemplate->getString("LOGIN_PASSWORD"); ?></div>
        <div class = "input">
          <input type = "password" id = "login_password" name = "login_password"></input>
        </div>
      </div>

      <div class = "row row_submit">
        <span class = "button_blue" onclick = "wikiargument.passRequest(); return false;"><?php echo $sTemplate->getString("LOGIN_FORGOT_PASSWORD"); ?></span>
        <button class = "button_blue" onclick = "$('#form_login').submit();"><?php echo $sTemplate->getString("LOGIN_SUBMIT"); ?></button>
      </div>

      <input type = "hidden" name = "login" id = "login_mode_login" value = "1" />
      <input type = "hidden" name = "passRequest" id = "login_mode_passRequest" value = "0" />
    </form>
  </div>

  <div class = "clear"></div>

  </div>

</div>

<?php include($sTemplate->getTemplateRootAbs()."footer.php"); ?>
