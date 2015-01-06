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

error_reporting(1);

/* mysql host */
define("MYSQL_HOST",                        "localhost");

/* mysql username */
define("MYSQL_USER",                        "wikiargbydev");

/* mysql password */
define("MYSQL_PASS",                        "DLxSAk0rOmJ80V3w");

/* mysql database */
define("MYSQL_NAME",                        "wikiargbydev_wikiarg_bel");
define("MYSQL_NAME_GLOBAL",                 MYSQL_NAME);

/* url to the template directory with trailing slash */
//define("TEMPLATE_ROOT",                     "http://wikiargby.falanster.info/tpl/default/");
define("TEMPLATE_ROOT",                     "http://wikiargby.falanster.info/tpl/charity/");

/* absolute path to the template directory on the file system */
define("TEMPLATE_ROOT_ABS",                 "/home/wikiargbydev/public_html/tpl/charity/");

/* base url */
define("SITE_ROOT",                         "http://wikiargby.falanster.info/");

/* may be used later */
define("AJAX_URL",                          "http://wikiargby.falanster.info/ajax.php");

/* url to the short url service */
define("SHORTURL_BASE",                     "http://wa.nf/");

/* sendmail data */
define("SENDMAIL_FROM",                     "admin@wikiargby.falanster.info");
define("SENDMAIL_FROM_NAME",                "admin wikiargby");

setlocale(LC_ALL, 'be_BE');

define("JS_USE_MIN",                        false);
define("CSS_USE_MIN",                       false);
define("CSS_USE_SPRITES",                   false);
define("LANG_USE_CACHE",                    false);

define("POSTS_ANON",                        false);

define("QUESTIONS_PER_PAGE",                10);

define("MAX_ARGUMENT_ABS_CHR_LENGTH",       140);
define("MAX_QUESTION_CHR_LENGTH",           100);
define("MAX_ARGUMENT_HEADLINE_CHR_LENGTH",  25);
define("MAX_TAGS_CHR_LENGTH",               45);
define("MAX_GROUP_NAME_CHR_LENGTH",         30);
define("USERNAME_MAX_LEN",                  20);

define("DEBUG_TIMING_SLOW_QUERY_TIME",      1000);
define("SESSION_SYNC_INTERVAL",             0);

define("QUESTION_EDIT_INTERVAL",            600);
define("ARGUMENT_EDIT_INTERVAL",            600);

// opcode debugging
define("DEBUG_OPCODES",                     1);

// log streams
define("LOG_TYPE_SQL",                      1);
define("LOG_TYPE_RIGHTS",                   2);
define("LOG_TYPE_LANG",                     3);
define("LOG_TYPE_SPAM",                     4);
define("LOG_TYPE_MESSAGE_DAEMON",           5);
define("LOG_TYPE_ADMIN_PACKET",             6);
define("LOG_TYPE_PERFORMANCE",              7);
define("LOG_TYPE_PERFORMANCE_VERBOSE",      8);
define("LOG_TYPE_DEBUG",                    9);
define("LOG_STREAM_SQL",                    "../logs/sql.log");
define("LOG_STREAM_RIGHTS",                 "../logs/rights.log");
define("LOG_STREAM_LANG",                   "../logs/lang.log");
define("LOG_STREAM_SPAM",                   "../logs/spam.log");
define("LOG_STREAM_MESSAGE_DAEMON",         "../logs/md.log");
define("LOG_STREAM_ADMIN_PACKET",           "../logs/admin.log");
define("LOG_STREAM_PERFORMANCE",            "../logs/performance.log");
define("LOG_STREAM_PERFORMANCE_VERBOSE",    "../logs/performance_verbose.log");
define("LOG_STREAM_DEBUG",                  "../logs/debug.log");

define("PATH_IMAGEMAGICK_CONVERT",          "convert");
define("PATH_IMAGEMAGICK_MOGRIFY",          "mogrify");

define("DEFAULT_LANG",                      "beBE");

function getMemcachedHosts()
{
    $hosts = Array(
        Array("session", "127.0.0.1", "11211"),
        Array("data",    "127.0.0.1", "11211")
    );
    return $hosts;
}

/*
* Set of global tables in case of multiple instances using the same user database.
*/
function getGlobalTables()
{
    $glob = Array();
    return $glob;
}

function getAvailableLanguages()
{
    $lang = Array("beBE");
    return $lang;
}
?>
