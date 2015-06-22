/*
 * Copyright (c) 2015 Andre de Oliveira <deoliveirambx@googlemail.com>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF MIND, USE, DATA OR PROFITS, WHETHER
 * IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING
 * OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 */

#include "login.h"
#include "loginctl.h"
#include "homectl.h"

#include <qmlvapp.h>
#include <qmlvdata.h>

int
main(int argc, char **argv)
{
	QmlvApp			qapp(argc, argv);
	QmlvData::ViewStateMap	statemap;
	LoginCtl		loginctl;
//	HomeCtl			homectl;

	/* create a state map, one qml object/file per state */
	statemap.insert(Login, QmlvData::StatePair("login", "LoginQml"));
//	statemap.insert(Home, QmlvData::StatePair("home", "HomeQml"));
	statemap.insert(Finish, QmlvData::StatePair("finish", "FinishQml"));
	qapp.setStateMap(&statemap);

	/* associate handlers and qml-views */
	qapp.setQml("qml/main.qml");
	qapp.registerHandler("LoginQml", &loginctl);
//	qapp.registerHandler("HomeQml", &homectl);

	/* set initial qml, and initial state */
	qapp.setState(Login);

	return qapp.exec();
}
