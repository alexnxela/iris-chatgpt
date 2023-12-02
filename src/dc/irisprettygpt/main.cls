Class dc.irisprettygpt.main
{

ClassMethod prompt(p As %String = "", k As %String = "") As %String [ Language = python ]
{
        import openai
        import os

        chat_gpt_key = os.getenv('API_CHATGPT_KEY', k)
        if not chat_gpt_key:
                return "API_CHATGPT_KEY is empty";

        
        if len(p) <= 0:
                return "Prompt is empty"

        openai.api_key = chat_gpt_key
        response = openai.ChatCompletion.create(
                model="gpt-3.5-turbo",
                messages=[
                    {"role": "user", "content": p},
                ],
        )

        msg = response["choices"][0]["message"]["content"].strip()
        return msg
}

}
