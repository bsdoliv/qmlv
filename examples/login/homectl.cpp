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
#include "homectl.h"

void
HomeCtl::on_foo()
{
	bool	e = false;

	qDebug() << "request" << request();
	
	/* authenticates */

	if (e)
		return onError("fail");

	return onSuccess("success");
}

void
HomeCtl::on_bar()
{
	/* next state: close confirmation window */
	 
	response()->next_state = Finish;
	return onSuccess("success");
}

void
HomeCtl::on_close()
{
}
